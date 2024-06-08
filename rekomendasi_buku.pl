
% %buku(Judul, Penulis, Kategori, Tahun, Genre)
% buku(laskar_pelangi, andrea_hirata, novel, 2005, [fiksi, edukasi]).
% buku(bumi_manusia, pramoedya_ananta_toer, novel, 1980, [sejarah, klasik]).
% buku(5_cm, donny_dhirgantoro, novel, 2005, [petualangan, romantis]).
% buku(sang_pemimpi, andrea_hirata, novel, 2006, [fiksi, anak_muda]).
% buku(perahu_kertas, dea_lestari, novel, 2004, [romantis, fiksi]).
% buku(ayat_ayat_cinta, habiburrahman_el_shirazy, novel, 2004, [fiksi, romantis]).
% buku(hafalan_shalat_delisa, tere_liye, novel, 2005, [fiksi, religi]).
% buku(atheis, achdiat_mihardja, novel, 1949, [klasik, fiksi]).
% buku(habis_gelap_terbitlah_terang, ra_kartini, biografi, 1911, []).
% buku(tenggelamnya_kapal_vanderwijk, hamka, novel, 1937, [fiksi, romantis]).
% buku(madilog, tan_malaka, biografi, 1946, []).
% buku(daun_yang_jatuh_tak_pernah_membenci_angin, tere_liye, novel, 2010, [romantis, family]).
% buku(negeri_para_bedebah, tere_liye, novel, 2012, [aksi, kriminal]).
% buku(max_havelaar, multatuli, novel, 1860, [politik, sejarah]).
% buku(99_cahaya_di_langit_eropa, hanum_salsabiela, novel, 2011, [religi, travel]).
% buku(chairul_tanjung_si_anak_singkong, tjahja_gunawan_diredja, biografi, 2012, []).
% buku(dari_penjara_ke_penjara, tan_malaka, biografi, 1948, []).
% buku(habibi_dan_ainun, bj_habibi, dokumenter, 2010, [non_fiksi, romantis]).
% buku(harry_potter, jk_rowling, novel, 1997, [fantasi, petualangan]).
% buku(the_great_gatsby, f_scott_fitzgerald, novel, 1925, [fiksi]).
% buku(to_kill_a_mockingbird, harper_lee, novel, 1960, [fiksi, drama]).
% buku(the_da_vinci_code, dan_brown, novel, 2003, [misteri, thriller]).
% buku(the_hobbit, jrr_tolkien, novel, 1937, [fantasi, petualangan]).
% buku(the_catcher_in_the_rye, jd_salinger, novel, 1951, [fiksi]).
% buku(pride_and_prejudice, jane_austen, novel, 1813, [roman]).
% buku(1984, george_orwell, novel, 1949, [fiksi, distopia]).
% buku(a_brief_history_of_time, stephen_hawking, karya_ilmiah, 1988, []).
% buku(the_diary_of_a_young_girl, anne_frank, biografi, 1947, []).

% rekomendasi_buku_kategori(Kategori, Buku) :-
%     buku(Buku, _, Kategori, _, _).

% rekomendasi_buku_genre(Genre, Buku) :-
%     buku(Buku, _, novel, _, Genres),
%     member(Genre, Genres).

% rekomendasi_buku_tahun(Tahun, Buku) :-
%     buku(Buku, _, _, TahunRilis, _),
%     (Tahun = lama, TahunRilis =< 2000; 
%      Tahun = baru, TahunRilis > 2000).

% rekomendasi_buku_novel(Kategori, Genre, Tahun, Buku) :-
%     rekomendasi_buku_kategori(Kategori, Buku),
%     rekomendasi_buku_genre(Genre, Buku),
%     rekomendasi_buku_tahun(Tahun, Buku).

% rekomendasi_buku_non_novel(Kategori, Tahun, Buku) :-
%     rekomendasi_buku_kategori(Kategori, Buku),
%     rekomendasi_buku_tahun(Tahun, Buku).

% mulai_rekomendasi(ListRekomendasi):-
%     write('Apa kategori buku yang sedang anda cari? (novel, biografi, karya_ilmiah, dokumenter) : '), nl,
%     read(Kategori),
%     (   Kategori = novel ->
%         write('Apa genre buku yang sedang anda cari? (fantasi, fiksi, romantis, aksi, petualangan, dll) : '), nl,
%         read(Genre)
%     ;   Genre = tidak_perlu),   
%     write('Anda mencari buku lama atau buku baru? (lama, baru) : '), nl,
%     read(Tahun),

%     (   Kategori = novel ->
%         findall(Buku, rekomendasi_buku_novel(Kategori, Genre, Tahun, Buku), ListRekomendasi)
%         ;
%         findall(Buku, rekomendasi_buku_non_novel(Kategori, Tahun, Buku), ListRekomendasi)),
    
%     (ListRekomendasi \= [] ->
%         write('Buku yang kami rekomendasikan : '), nl,
%         write_list(ListRekomendasi), nl
%         ;
%         write('Maaf, kami tidak memiliki buku yang sesuai dengan inputan anda.'), nl, nl).

% write_list([]).
% write_list([Head | Tail]) :-
%     write('- '), write(Head), nl,
%     write_list(Tail).

% %Supaya langsung menjalankan mulai_rekomendasi
% :- mulai_rekomendasi(_).






% %buku(Judul, Penulis, Kategori, Tahun, Genre)
% buku(laskar_pelangi, andrea_hirata, novel, 2005, [fiksi, edukasi]).
% buku(bumi_manusia, pramoedya_ananta_toer, novel, 1980, [sejarah, klasik]).
% buku(5_cm, donny_dhirgantoro, novel, 2005, [petualangan, romantis]).
% buku(sang_pemimpi, andrea_hirata, novel, 2006, [fiksi, anak_muda]).
% buku(perahu_kertas, dea_lestari, novel, 2004, [romantis, fiksi]).
% buku(ayat_ayat_cinta, habiburrahman_el_shirazy, novel, 2004, [fiksi, romantis]).
% buku(hafalan_shalat_delisa, tere_liye, novel, 2005, [fiksi, religi]).
% buku(atheis, achdiat_mihardja, novel, 1949, [klasik, fiksi]).
% buku(habis_gelap_terbitlah_terang, ra_kartini, biografi, 1911, []).
% buku(tenggelamnya_kapal_vanderwijk, hamka, novel, 1937, [fiksi, romantis]).
% buku(madilog, tan_malaka, biografi, 1946, []).
% buku(daun_yang_jatuh_tak_pernah_membenci_angin, tere_liye, novel, 2010, [romantis, family]).
% buku(negeri_para_bedebah, tere_liye, novel, 2012, [aksi, kriminal]).
% buku(max_havelaar, multatuli, novel, 1860, [politik, sejarah]).
% buku(99_cahaya_di_langit_eropa, hanum_salsabiela, novel, 2011, [religi, travel]).
% buku(chairul_tanjung_si_anak_singkong, tjahja_gunawan_diredja, biografi, 2012, []).
% buku(dari_penjara_ke_penjara, tan_malaka, biografi, 1948, []).
% buku(habibi_dan_ainun, bj_habibi, dokumenter, 2010, [non_fiksi, romantis]).
% buku(harry_potter, jk_rowling, novel, 1997, [fantasi, petualangan]).
% buku(the_great_gatsby, f_scott_fitzgerald, novel, 1925, [fiksi]).
% buku(to_kill_a_mockingbird, harper_lee, novel, 1960, [fiksi, drama]).
% buku(the_da_vinci_code, dan_brown, novel, 2003, [misteri, thriller]).
% buku(the_hobbit, jrr_tolkien, novel, 1937, [fantasi, petualangan]).
% buku(the_catcher_in_the_rye, jd_salinger, novel, 1951, [fiksi]).
% buku(pride_and_prejudice, jane_austen, novel, 1813, [roman]).
% buku(1984, george_orwell, novel, 1949, [fiksi, distopia]).
% buku(a_brief_history_of_time, stephen_hawking, karya_ilmiah, 1988, []).
% buku(the_diary_of_a_young_girl, anne_frank, biografi, 1947, []).

% rekomendasi_buku_kategori(Kategori, Buku) :-
%     buku(Buku, _, Kategori, _, _).

% rekomendasi_buku_penulis(Penulis, Buku) :-
%     buku(Buku, Penulis, _, _, _).

% rekomendasi_buku_genre(Genre, Buku) :-
%     buku(Buku, _, novel, _, Genres),
%     member(Genre, Genres).

% rekomendasi_buku_tahun(Tahun, Buku) :-
%     buku(Buku, _, _, TahunRilis, _),
%     (Tahun = lama, TahunRilis =< 2000; 
%      Tahun = baru, TahunRilis > 2000).

% rekomendasi_buku_novel(Penulis, Genre, Tahun, Buku) :-
%     rekomendasi_buku_penulis(Penulis, Buku),
%     rekomendasi_buku_genre(Genre, Buku),
%     rekomendasi_buku_tahun(Tahun, Buku).

% rekomendasi_buku_non_novel(Kategori, Penulis, Tahun, Buku) :-
%     rekomendasi_buku_kategori(Kategori, Buku),
%     rekomendasi_buku_penulis(Penulis, Buku),
%     rekomendasi_buku_tahun(Tahun, Buku).

% mulai_rekomendasi(ListRekomendasi):-
%     write('Apa kategori buku yang sedang anda cari? (novel, biografi, karya_ilmiah, dokumenter) : '), nl,
%     read(Kategori),
%     (   Kategori = novel ->
%         write('Apa genre buku yang sedang anda cari? (fantasi, fiksi, romantis, aksi, petualangan, dll) : '), nl,
%         read(Genre)
%     ;   Genre = tidak_perlu),  
%     write('Siapa penulis yang anda sukai : '), nl,
%     read(Penulis),

%     write('Anda mencari buku lama atau buku baru? (lama, baru) : '), nl,
%     read(Tahun),

%     (   Kategori = novel ->
%         findall(Buku, rekomendasi_buku_novel(Penulis, Genre, Tahun, Buku), ListRekomendasi)
%         ;
%         findall(Buku, rekomendasi_buku_non_novel(Penulis, Kategori, Tahun, Buku), ListRekomendasi)),
    
%     (ListRekomendasi \= [] ->
%         write('Buku yang kami rekomendasikan : '), nl,
%         write_list(ListRekomendasi), nl
%         ;
%         write('Maaf, kami tidak memiliki buku yang sesuai dengan inputan anda.'), nl, nl).

% write_list([]).
% write_list([Head | Tail]) :-
%     write('- '), write(Head), nl,
%     write_list(Tail).





% -------------------------------
% PROGRES 3


%buku(Judul, Penulis, Kategori, Tahun, Genre)
buku(laskar_pelangi, andrea_hirata, novel, 2005, [fiksi, edukasi]).
buku(bumi_manusia, pramoedya_ananta_toer, novel, 1980, [sejarah, klasik]).
buku(5_cm, donny_dhirgantoro, novel, 2005, [petualangan, romantis]).
buku(sang_pemimpi, andrea_hirata, novel, 2006, [fiksi, anak_muda]).
buku(perahu_kertas, dea_lestari, novel, 2004, [romantis, fiksi]).
buku(ayat_ayat_cinta, habiburrahman_el_shirazy, novel, 2004, [fiksi, romantis]).
buku(hafalan_shalat_delisa, tere_liye, novel, 2005, [fiksi, religi]).
buku(atheis, achdiat_mihardja, novel, 1949, [klasik, fiksi]).
buku(habis_gelap_terbitlah_terang, ra_kartini, biografi, 1911, []).
buku(tenggelamnya_kapal_vanderwijk, hamka, novel, 1937, [fiksi, romantis]).
buku(madilog, tan_malaka, biografi, 1946, []).
buku(daun_yang_jatuh_tak_pernah_membenci_angin, tere_liye, novel, 2010, [romantis, family]).
buku(negeri_para_bedebah, tere_liye, novel, 2012, [aksi, kriminal]).
buku(max_havelaar, multatuli, novel, 1860, [politik, sejarah]).
buku(99_cahaya_di_langit_eropa, hanum_salsabiela, novel, 2011, [religi, travel]).
buku(chairul_tanjung_si_anak_singkong, tjahja_gunawan_diredja, biografi, 2012, []).
buku(dari_penjara_ke_penjara, tan_malaka, biografi, 1948, []).
buku(habibi_dan_ainun, bj_habibi, dokumenter, 2010, [non_fiksi, romantis]).
buku(harry_potter, jk_rowling, novel, 1997, [fantasi, petualangan]).
buku(the_great_gatsby, f_scott_fitzgerald, novel, 1925, [fiksi]).
buku(to_kill_a_mockingbird, harper_lee, novel, 1960, [fiksi, drama]).
buku(the_da_vinci_code, dan_brown, novel, 2003, [misteri, thriller]).
buku(the_hobbit, jrr_tolkien, novel, 1937, [fantasi, petualangan]).
buku(the_catcher_in_the_rye, jd_salinger, novel, 1951, [fiksi]).
buku(pride_and_prejudice, jane_austen, novel, 1813, [roman]).
buku(1984, george_orwell, novel, 1949, [fiksi, distopia]).
buku(a_brief_history_of_time, stephen_hawking, karya_ilmiah, 1988, []).
buku(the_diary_of_a_young_girl, anne_frank, biografi, 1947, []).

% #fakta tambahan
buku(in_search_of_lost_time, marcel_proust, novel, 1913, [drama, romantis, seni]).
buku(hujan, tere_liye, novel, 2016, [romantis, fiksi, fantasi]).
buku(pulang, tere_liye, novel, 2015, [fiksi, aksi, keluarga]).

buku(think_and_grow_rich, napoleon_hill, self_improvement, 1937, []).
buku(the_7_habits_of_highly_effective_people, stephen_r_covey, self_improvement, 1989, []).
buku(the_power_of_postive_thinking, norman_vincent, self_improvement, 1952, []).
buku(young_on_top, billy_boen, self_improvement, 2009, []).
buku(the-power_of_doingless, fergus_o_connel, self_improvement, 2013, []).
buku(the_one_thing, garry_keller, self_improvement, 2012, []).
buku(sebuah_seni_untuk_bersikap_bodo_amat, mark_manson, self_improvement, 2016, []).
buku(atomic_habits, james_clear, self_improvement, 2018, []).
buku(sejarah_dunia_yang_disembunyikan,jonathan_black, literatur, 2007, []).
buku(rich_dad_poor_dad, robert_kiyosaki, self_improvement, 1997, []).
buku(the_5_am_club, robin_sharma, self_improvement, 2018, []).
buku(how_to_win_friends_and_influence_people, dale_carnegie, self_improvement, 1936, []).
buku(laut_bercerita, leila_salikha_chudori, novel, 2017, [persahabatan, keluarga]).
buku(seribu_wajah_ayah, nurul_ala, novel, 2020, [keluarga]).
buku(tapak_jejak, fiersa_besari, novel, 2019, [petualangan, drama]).
buku(janji, tere_liye, novel, 2021, [fiksi_remaja, psikologi]).


buku(on_the_origin_of_species, charles_darwin, karya_ilmiah, 1859, [biologi]).
buku(biologi, neil_a_campbell, karya_ilmiah, 2008, [biologi]).
buku(rekayasa_perangkat_lunak, roger_pressman, karya_ilmiah, 1982, [ilmu_komputer]).
buku(introduction_of_algorithms, ronald_rivest, karya_ilmiah, 1989, [ilmu_komputer]).
buku(computer_arcihtecture_a_quantitive_approach, david_a, karya_ilmiah, 1992, [ilmu_komputer]).


rekomendasi_buku_kategori(Kategori, Buku) :-
    buku(Buku, _, Kategori, _, _).

rekomendasi_buku_penulis(Penulis, Buku) :-
    buku(Buku, Penulis, _, _, _).

rekomendasi_buku_genre(Genre, Buku) :-
    buku(Buku, _, novel, _, Genres),
    member(Genre, Genres).

rekomendasi_buku_subject(Subject, Buku) :-
    buku(Buku, _, karya_ilmiah, _, Subjects),
    member(Subject, Subjects).

rekomendasi_buku_tahun(Tahun, Buku) :-
    buku(Buku, _, _, TahunRilis, _),
    (Tahun = lama, TahunRilis =< 2000; 
     Tahun = baru, TahunRilis > 2000).

rekomendasi_buku_novel(Penulis, Genre, Tahun, Buku) :-
    rekomendasi_buku_penulis(Penulis, Buku),
    rekomendasi_buku_genre(Genre, Buku),
    rekomendasi_buku_tahun(Tahun, Buku).

rekomendasi_buku_karya_ilmiah(Penulis, Subject, Tahun, Buku) :-
    rekomendasi_buku_penulis(Penulis, Buku),
    rekomendasi_buku_subject(Subject, Buku),
    rekomendasi_buku_tahun(Tahun, Buku).

rekomendasi_buku_non_novel(Kategori, Penulis, Tahun, Buku) :-
    rekomendasi_buku_kategori(Kategori, Buku),
    rekomendasi_buku_penulis(Penulis, Buku),
    rekomendasi_buku_tahun(Tahun, Buku).

%Prosedur utama untuk mendapatkan rekomendasi buku
mulai_rekomendasi(ListRekomendasi) :-
    write('Apa kategori buku yang sedang anda cari? (novel, biografi, karya_ilmiah, dokumenter, self_improvement) : '), nl,
    read(Kategori),
    (   Kategori = novel ->
        write('Apa genre buku yang sedang anda cari? (fantasi, fiksi, romantis, aksi, petualangan, dll) : '), nl,
        read(Genre)
    ;
        Kategori = karya_ilmiah ->
        write('Bidang/subject apa yang sedang anda inginkan (biologi, fisika, kimia, ilmu komputer) : '), nl,
        read(Subject)
    ;
       Genre = tidak_perlu,
       Subject = tidak_perlu),

    write('Siapa penulis yang anda sukai : '), nl,
    read(Penulis),

    write('Anda mencari buku lama atau buku baru? (lama, baru) : '), nl,
    read(Tahun),

    (   Kategori = novel ->
        findall(Buku, rekomendasi_buku_novel(Penulis, Genre, Tahun, Buku), ListRekomendasi)
    ;
        Kategori = karya_ilmiah ->
        findall(Buku, rekomendasi_buku_karya_ilmiah(Penulis, Subject, Tahun, Buku), ListRekomendasi)
    ;
        findall(Buku, rekomendasi_buku_non_novel(Kategori, Penulis, Tahun, Buku), ListRekomendasi)),
    
    list_to_set(ListRekomendasi, UniqueListRekomendasi),

    (UniqueListRekomendasi \= [] ->
        write('Buku yang kami rekomendasikan : '), nl,
        write_list(UniqueListRekomendasi), nl
    ;
        write('Maaf, kami tidak memiliki buku yang sesuai dengan inputan anda.'), nl, nl).

%Prosedur untuk menulis daftar buku
write_list([]).
write_list([Head|Tail]) :-
    write('- '), write(Head), nl,
    write_list(Tail).

%Supaya langsung menjalankan mulai_rekomendasi
:- mulai_rekomendasi(_).