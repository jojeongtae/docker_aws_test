import React, { useEffect, useState } from "react";
import apiClient from "../api/apiClient";
import {useSelector} from "react-redux";
import {useNavigate} from "react-router-dom";

export default function Matched({ currentUsername }) {
    const navigate = useNavigate();

    const [matchedUsers, setMatchedUsers] = useState([]);
    const [allUsers, setAllUsers] = useState([]);
    const currentUser = useSelector(state => state.main.currentUser)


    useEffect(() => {
        if (!currentUser || !currentUser.username) {
            console.log("currentUser or username is missing");
            return;
        }
        console.log("currentUser.username:", currentUser.username);

        const fetchMatches = async () => {
            try {
                const res = await apiClient.get(`/match/${currentUser.username}`);
                console.log("매칭 데이터:", res.data);

                const userRes = await apiClient.get("/user/list");
                const userList = userRes.data;

                const enrichedMatches = res.data
                    .map((match) => {
                        // 성별에 따라 상대방 username 정하기
                        const matcherUsername =
                            currentUser.sexuality === "남성"
                                ? match.matchfemale
                                : match.matchmale;

                        // userList에서 matcherUsername과 일치하는 사용자 정보 찾기
                        const userInfo = userList.find(user => user.username === match.matchername);


                        if (!userInfo) return undefined;

                        return {
                            ...userInfo,
                            matchtime: match.matchtime,
                        };
                    })
                    .filter((user) => user !== undefined);

                setMatchedUsers(enrichedMatches);
            } catch (err) {
                console.error("매칭 정보 가져오기 실패", err);
            }
        };

        fetchMatches();
    }, [currentUser]);
    //leaveMe
    const handleLeaveMe = async (leave) => {
        try {
            const payload = {
                user1: currentUser.username,
                user2: leave.username,
            };

            // 매칭 삭제
            const res = await apiClient.delete("/match/delete", { data: payload });
            console.log("매칭 삭제", res.data);

            if (res.data !== null) {
                // 좋아요 삭제 (방향 1)
                const leavelike1 = {
                    liker: leave.username,
                    liked: currentUser.username
                };
                await apiClient.delete("like", { data: leavelike1 });

                // 좋아요 삭제 (방향 2)
                const leavelike2 = {
                    liker: currentUser.username,
                    liked: leave.username
                };
                await apiClient.delete("like", { data: leavelike2 });

                console.log("좋아요 삭제 완료");
            }
        } catch (err) {
            console.log("삭제 중 오류 발생", err);
        }
        setMatchedUsers(prev => prev.filter(user => user.username !== leave.username));
    };

    return (
        <>
            <section id={"matched"}>
                <div className="background-hearts">
                    {Array.from({ length: 30 }, (_, i) => (
                        <img
                            key={i}
                            src="/heart.png"
                            alt="background heart"
                            className={`bg-heart bg-heart${i + 1}`}
                        />
                    ))}
                </div>

                <div className="matched-container">
                    <h2 className="matched-title">💑 매칭된 사용자 목록</h2>
                    {matchedUsers.length === 0 ? (
                        <p className="matched-empty">아직 매칭된 사용자가 없어요.</p>
                    ) : (
                        <div className="card-list">
                            {matchedUsers.map((user, index) => (
                                <div className="user-card" key={index}>
                                    <img
                                        className="user-img"
                                        src={user.profileimg || "/default-profile.png"}
                                        alt={user.usernickname}
                                    />
                                    <div className="user-details">
                                        <div className="nickname">{user.usernickname} ({user.age}세)</div>
                                        <div className="info">
                                            <span className="label">MBTI</span>
                                            <span className="value">{user.mbti}</span>
                                        </div>
                                        <div className="info">
                                            <span className="label">지역</span>
                                            <span className="value">{user.address}</span>
                                        </div>
                                        <div className="info">
                                            <span className="label">키 / 몸무게</span>
                                            <span className="value">{user.height}cm / {user.weight}kg</span>
                                        </div>
                                        <div className="info">
                                            <span className="label">관심사</span>
                                            <span className="value">{user.interest}</span>
                                        </div>
                                        <div className="info">
                                            <span className="label">매칭일</span>
                                            <span className="value">{new Date(user.matchtime).toLocaleDateString()}</span>
                                        </div>
                                    </div>
                                    <div className="user-side-buttons">
                                        <button
                                            className="matched-button join"
                                            onClick={() => navigate(`/main/joinme/${user.username}`)}
                                        >
                                            💕 Join Me
                                        </button>
                                        <button className="matched-button leave" onClick={()=>handleLeaveMe(user)}>
                                            💔 Leave Me
                                        </button>
                                    </div>
                                </div>
                            ))}
                        </div>
                    )}
                </div>
            </section>
            </>
    );
}