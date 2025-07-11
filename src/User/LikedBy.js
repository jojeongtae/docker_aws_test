import React, { useEffect, useState } from "react";
import { useSelector } from "react-redux";
import apiClient from "../api/apiClient";
import {Swiper, SwiperSlide} from "swiper/react";
import {Autoplay, EffectFade, Pagination} from "swiper/modules";

export default function LikedBy() {
    const currentUser = useSelector((state) => state.main.currentUser);
    const [likedMeUsers, setLikedMeUsers] = useState([]);      // 나를 좋아요한 유저 목록
    const [matchedUsers, setMatchedUsers] = useState([]);      // 매칭된 유저 목록
    const [hatedUsers, setHatedUsers] = useState([]);          // 내가 차단한 유저 username 목록

    useEffect(() => {
        if (!currentUser) return;

        // 나를 좋아요한 유저 가져오기
        const fetchLikedMeUsers = async () => {
            try {
                const res = await apiClient.get("/like/liker-users", {
                    params: { liked: currentUser.username },
                });
                setLikedMeUsers(res.data);
            } catch (error) {
                console.error(error);
            }
        };

        // 매칭된 유저 가져오기
        const fetchMatchedUsers = async () => {
            try {
                const res = await apiClient.get(`/match/${currentUser.username}`);
                setMatchedUsers(res.data);
            } catch (error) {
                console.error(error);
            }
        };

        // 내가 차단한 유저 가져오기
        const fetchHatedUsers = async () => {
            try {
                const res = await apiClient.get(`/hate-list/${currentUser.username}`);
                const hatedList = res.data.map(item => item.hated); // HateDTO에 hated 필드 기준
                setHatedUsers(hatedList);
            } catch (error) {
                console.error("차단 목록 불러오기 실패:", error);
            }
        };

        fetchLikedMeUsers();
        fetchMatchedUsers();
        fetchHatedUsers();
    }, [currentUser]);

    // 매칭된 유저들의 username 추출
    const matchedUsernames = matchedUsers.map(match => match.matchername);

    // 나를 좋아요한 유저 중에서,
    // 매칭된 유저 ❌ + 내가 차단한 유저 ❌ 제외
    const filteredLikedMeUsers = likedMeUsers.filter(
        user =>
            !matchedUsernames.includes(user.username) &&
            !hatedUsers.includes(user.username)
    );
    const banners = [
        {
            src: "/banners/banners1.png",
            link: "http://localhost:3000"
        },
        {
            src: "/banners/banners2.png",
            link: "http://localhost:3000"
        },
        {
            src: "/banners/banners3.png",
            link: "http://localhost:3000"
        }
    ];
    // 좋아요 돌려주기
    const handleReturnLike = async (likedUser) => {
        try {
            const res = await apiClient.post("like", {
                liker: currentUser.username,
                liked: likedUser.username,
            });
            alert(res.data); // 매칭 또는 좋아요 메시지
            setLikedMeUsers(prev => prev.filter(u => u.username !== likedUser.username)); // UI에서 제거
        } catch (error) {
            console.error("좋아요 돌려주기 실패:", error);
            if (error.response?.data) {
                alert(error.response.data);
            } else {
                alert("좋아요 돌려주기에 실패했습니다.");
            }
        }
    };

    // 차단하기
    const handleReport = async (hatedUser) => {
        try {
            const params = new URLSearchParams({
                hater: currentUser.username,
                hated: hatedUser.username,
            });
            await apiClient.post(`hate-user?${params.toString()}`);
            alert(`${hatedUser.usernickname}님을 차단했습니다.`);
            setLikedMeUsers(prev => prev.filter(u => u.username !== hatedUser.username)); // UI에서 제거
        } catch (error) {
            console.error("차단 요청 실패:", error);
            alert("차단 처리에 실패했습니다.");
        }
    };

    return (
        <section id="likedby">
            <h2 className="likedby-title">💑나를 좋아요 한 사람들</h2>
            {filteredLikedMeUsers.length === 0 ? (
                <div className={"inner"} style={{textAlign:"center"}}>
                    <h2>아직 나를 좋아요 한 사람들이 없어요</h2>
                    <div className="ad-swiper-wrapper">
                        <Swiper
                            modules={[Autoplay, EffectFade, Pagination]}
                            autoplay={{delay: 3000, disableOnInteraction: false}}
                            effect="fade" // ✅ 누락되어 있던 효과
                            loop={true}
                            slidesPerView={1}
                            pagination={{clickable: true}}
                        >
                            {banners.map((banner, idx) => (
                                <SwiperSlide key={idx} style={{display: "flex", justifyContent: "center"}}>
                                    <a href={banner.link} target="_blank" rel="noopener noreferrer">
                                        <img src={banner.src} alt={`banner-${idx}`}/>
                                    </a>

                                </SwiperSlide>
                            ))}
                        </Swiper>
                        <p>이번달 광고 리스트</p>
                    </div>
                </div>
            ) : (
                filteredLikedMeUsers.map((user) => (
                    <div className="likedby-card" key={user.username}>
                        <img className="user-image" src={user.profileimg} alt={user.usernickname} />
                        <div className="user-info-container">
                            <div className="user-info">
                                <div className="user-nickname">{user.usernickname}</div>
                                <div className="user-info-row">
                                    <span className="user-info-label">MBTI</span>
                                    <span className="user-info-value">{user.mbti}</span>
                                </div>
                                <div className="user-info-row">
                                    <span className="user-info-label">관심사</span>
                                    <span className="user-info-value">{user.interest}</span>
                                </div>
                                <div className="user-info-row">
                                    <span className="user-info-label">지역</span>
                                    <span className="user-info-value">{user.address}</span>
                                </div>
                                <div className="user-info-row">
                                    <span className="user-info-label">키 / 몸무게</span>
                                    <span className="user-info-value">{user.height}cm / {user.weight}kg</span>
                                </div>
                                <p className="user-intro">{user.introduction}</p>
                            </div>
                            <div className="user-side-buttons">
                                <button className="likedby-button" onClick={() => handleReturnLike(user)}>
                                    💖 돌려주기
                                </button>
                                <button className="likedby-button report" onClick={() => handleReport(user)}>
                                    🚫 차단하기
                                </button>
                            </div>
                        </div>
                    </div>
                ))
            )}
        </section>
    );
}
