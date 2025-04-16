-- @author je.ko
-- 오라클 -> PostgreSQL DDL 변환

-- TB_HR_DEPT_INFO_M
CREATE TABLE TB_HR_DEPT_INFO_M (
  DEPT_CD VARCHAR(10) NOT NULL,
  DEPT_NM VARCHAR(100) NOT NULL,
  DEPT_ENG_NM VARCHAR(100),
  HIGH_DEPT_CD VARCHAR(10),
  DEPT_USE_YN VARCHAR(1) NOT NULL,
  DEPT_GRAD_VAL VARCHAR(3),
  DEPT_SORT_PRCS INTEGER,
  DEPT_USE_STRT_DT VARCHAR(8),
  DEPT_USE_END_DT VARCHAR(8),
  DEPT_HEAD_EMPL_NO VARCHAR(10),
  DEPT_HEAD_ACSN_DT VARCHAR(8),
  RMRK_CN VARCHAR(4000),
  PRIMARY KEY (DEPT_CD)
);
COMMENT ON TABLE TB_HR_DEPT_INFO_M IS '부서 정보 기본';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.DEPT_CD IS '부서코드';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.DEPT_NM IS '부서명';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.DEPT_ENG_NM IS '부서영어명';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.HIGH_DEPT_CD IS '상위부서코드';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.DEPT_USE_YN IS '부서사용여부';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.DEPT_GRAD_VAL IS '부서등급값';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.DEPT_SORT_PRCS IS '부서정렬순서';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.DEPT_USE_STRT_DT IS '부서사용시작일';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.DEPT_USE_END_DT IS '부서사용종료일';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.DEPT_HEAD_EMPL_NO IS '부서장사원번호';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.DEPT_HEAD_ACSN_DT IS '부서장부임일';
COMMENT ON COLUMN TB_HR_DEPT_INFO_M.RMRK_CN IS '비고내용';

-- TB_HR_DEPT_INFO_H
CREATE TABLE TB_HR_DEPT_INFO_H (
  DEPT_CD VARCHAR(10) NOT NULL,
  UPT_DT VARCHAR(14) NOT NULL,
  UPD_CLS_CD VARCHAR(2),
  DEPT_NM VARCHAR(100) NOT NULL,
  DEPT_ENG_NM VARCHAR(100),
  HIGH_DEPT_CD VARCHAR(10),
  DEPT_USE_YN VARCHAR(1) NOT NULL,
  DEPT_GRAD_VAL VARCHAR(3),
  DEPT_SORT_PRCS INTEGER,
  DEPT_USE_STRT_DT VARCHAR(8),
  DEPT_USE_END_DT VARCHAR(8),
  DEPT_HEAD_EMPL_NO VARCHAR(10),
  DEPT_HEAD_ACSN_DT VARCHAR(8),
  RMRK_CN VARCHAR(4000),
  PRIMARY KEY (DEPT_CD, UPT_DT)
);
COMMENT ON TABLE TB_HR_DEPT_INFO_H IS '부서 정보 이력';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.DEPT_CD IS '부서코드';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.UPT_DT IS '변경일시';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.UPD_CLS_CD IS '변경유형코드';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.DEPT_NM IS '부서명';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.DEPT_ENG_NM IS '부서영어명';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.HIGH_DEPT_CD IS '상위부서코드';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.DEPT_USE_YN IS '부서사용여부';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.DEPT_GRAD_VAL IS '부서등급값';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.DEPT_SORT_PRCS IS '부서정렬순서';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.DEPT_USE_STRT_DT IS '부서사용시작일';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.DEPT_USE_END_DT IS '부서사용종료일';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.DEPT_HEAD_EMPL_NO IS '부서장사원번호';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.DEPT_HEAD_ACSN_DT IS '부서장부임일';
COMMENT ON COLUMN TB_HR_DEPT_INFO_H.RMRK_CN IS '비고내용';

-- TB_HR_HRA_INFO_BAS_H
CREATE TABLE TB_HR_HRA_INFO_BAS_H (
  EMPL_NO VARCHAR(10) NOT NULL,
  UPT_DT VARCHAR(14) NOT NULL,
  UPD_CLS_CD VARCHAR(2),
  FLNM VARCHAR(30) NOT NULL,
  ENCPT_INHB_NO VARCHAR(60) NOT NULL,
  DEPT_CD VARCHAR(10) NOT NULL,
  BRYR_MM_DT VARCHAR(8),
  ENTR_DD VARCHAR(8) NOT NULL,
  RTRM_DD VARCHAR(8),
  GNDR_CD VARCHAR(1),
  NTN_CD VARCHAR(3),
  WORK_STUS_CD VARCHAR(2) NOT NULL,
  ENTR_DV_CD VARCHAR(2) NOT NULL,
  RTRM_RSN_CD VARCHAR(2),
  LVABSN_RSN_CD VARCHAR(2),
  JBTTL_CD VARCHAR(2),
  PSTN_CD VARCHAR(2),
  OCPT_CD VARCHAR(2),
  WORK_CD VARCHAR(2),
  POST_CD VARCHAR(2),
  CTR_CLS_CD VARCHAR(2),
  WORK_JOB_CLS_CD VARCHAR(2),
  EMPT_FORM_CD VARCHAR(2),
  SAL_CLS_CD VARCHAR(2) NOT NULL,
  WORK_HOUR_GRP_CD VARCHAR(2),
  ENT_STUD_SML_OGDP_YN VARCHAR(1),
  FRL_JOB_SWH_DT VARCHAR(8),
  CHNCRT_FLNM VARCHAR(30),
  ENG_FLNM VARCHAR(30),
  MILS_DV_CD VARCHAR(2),
  ACBG_DV_CD VARCHAR(2),
  SPT_FMAL_YN VARCHAR(1),
  MRG_YN VARCHAR(1),
  MRG_DT VARCHAR(8),
  DSBLT_GRAD_CD VARCHAR(2),
  DSBLT_MTTR_CN VARCHAR(2000),
  RWDPTR_MTTR_CD VARCHAR(2),
  ZIP_NO VARCHAR(5),
  ADDR VARCHAR(200),
  DTL_ADDR VARCHAR(200),
  HTEL_NO VARCHAR(20),
  HP_NO VARCHAR(20),
  CO_EMAIL_ADDR VARCHAR(320),
  PRSN_EMAIL_ADDR VARCHAR(320),
  INOUT_ID_NO VARCHAR(5),
  NTN_STUD_PRSN_NO VARCHAR(10),
  PRIMARY KEY (EMPL_NO, UPT_DT)
);
COMMENT ON TABLE TB_HR_HRA_INFO_BAS_H IS '인사 정보 이력';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.EMPL_NO IS '사원번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.UPT_DT IS '변경일시';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.UPD_CLS_CD IS '변경유형코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.FLNM IS '성명';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.ENCPT_INHB_NO IS '암호화주민번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.DEPT_CD IS '부서코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.BRYR_MM_DT IS '생년월일';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.ENTR_DD IS '입사일자';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.RTRM_DD IS '퇴사일자';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.GNDR_CD IS '성별코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.NTN_CD IS '국가코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.WORK_STUS_CD IS '재직상태코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.ENTR_DV_CD IS '입사구분코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.RTRM_RSN_CD IS '퇴직사유코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.LVABSN_RSN_CD IS '휴직사유코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.JBTTL_CD IS '직책코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.PSTN_CD IS '직급코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.OCPT_CD IS '직종코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.WORK_CD IS '직무코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.POST_CD IS '직위코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.CTR_CLS_CD IS '계약유형코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.WORK_JOB_CLS_CD IS '근무직유형코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.EMPT_FORM_CD IS '고용형태코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.SAL_CLS_CD IS '급여유형코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.WORK_HOUR_GRP_CD IS '근무시간그룹코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.ENT_STUD_SML_OGDP_YN IS '기업연구소소속여부';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.FRL_JOB_SWH_DT IS '정규직전환일';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.CHNCRT_FLNM IS '한자성명';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.ENG_FLNM IS '영어성명';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.MILS_DV_CD IS '병역구분코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.ACBG_DV_CD IS '학력구분코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.SPT_FMAL_YN IS '부양여성여부';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.MRG_YN IS '결혼여부';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.MRG_DT IS '결혼일';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.DSBLT_GRAD_CD IS '장애등급코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.DSBLT_MTTR_CN IS '장애사항내용';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.RWDPTR_MTTR_CD IS '보훈사항코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.ZIP_NO IS '우편번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.ADDR IS '주소';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.DTL_ADDR IS '상세주소';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.HTEL_NO IS '집전화번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.HP_NO IS '휴대전화번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.CO_EMAIL_ADDR IS '회사이메일주소';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.PRSN_EMAIL_ADDR IS '개인이메일주소';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.INOUT_ID_NO IS '출입식별번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_H.NTN_STUD_PRSN_NO IS '국가연구자번호';

-- TB_HR_HRA_INFO_BAS_M
CREATE TABLE TB_HR_HRA_INFO_BAS_M (
  EMPL_NO VARCHAR(10) NOT NULL,
  FLNM VARCHAR(30) NOT NULL,
  ENCPT_INHB_NO VARCHAR(60) NOT NULL,
  DEPT_CD VARCHAR(10) NOT NULL,
  BRYR_MM_DT VARCHAR(8),
  ENTR_DD VARCHAR(8) NOT NULL,
  RTRM_DD VARCHAR(8),
  GNDR_CD VARCHAR(1),
  NTN_CD VARCHAR(3),
  WORK_STUS_CD VARCHAR(2) NOT NULL,
  ENTR_DV_CD VARCHAR(2) NOT NULL,
  RTRM_RSN_CD VARCHAR(2),
  LVABSN_RSN_CD VARCHAR(2),
  JBTTL_CD VARCHAR(2),
  PSTN_CD VARCHAR(2),
  OCPT_CD VARCHAR(2),
  WORK_CD VARCHAR(2),
  POST_CD VARCHAR(2),
  CTR_CLS_CD VARCHAR(2),
  WORK_JOB_CLS_CD VARCHAR(2),
  EMPT_FORM_CD VARCHAR(2),
  SAL_CLS_CD VARCHAR(2) NOT NULL,
  WORK_HOUR_GRP_CD VARCHAR(2),
  ENT_STUD_SML_OGDP_YN VARCHAR(1),
  FRL_JOB_SWH_DT VARCHAR(8),
  CHNCRT_FLNM VARCHAR(30),
  ENG_FLNM VARCHAR(30),
  MILS_DV_CD VARCHAR(2),
  ACBG_DV_CD VARCHAR(2),
  SPT_FMAL_YN VARCHAR(1),
  MRG_YN VARCHAR(1),
  MRG_DT VARCHAR(8),
  DSBLT_GRAD_CD VARCHAR(2),
  DSBLT_MTTR_CN VARCHAR(2000),
  RWDPTR_MTTR_CD VARCHAR(2),
  ZIP_NO VARCHAR(5),
  ADDR VARCHAR(200),
  DTL_ADDR VARCHAR(200),
  HTEL_NO VARCHAR(16),
  HP_NO VARCHAR(16),
  CO_EMAIL_ADDR VARCHAR(320),
  PRSN_EMAIL_ADDR VARCHAR(320),
  INOUT_ID_NO VARCHAR(5),
  NTN_STUD_PRSN_NO VARCHAR(10)
);
COMMENT ON TABLE TB_HR_HRA_INFO_BAS_M IS '인사 정보 기본';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.EMPL_NO IS '사원번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.FLNM IS '성명';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.ENCPT_INHB_NO IS '암호화주민번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.DEPT_CD IS '부서코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.BRYR_MM_DT IS '생년월일';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.ENTR_DD IS '입사일자';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.RTRM_DD IS '퇴사일자';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.GNDR_CD IS '성별코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.NTN_CD IS '국가코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.WORK_STUS_CD IS '재직상태코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.ENTR_DV_CD IS '입사구분코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.RTRM_RSN_CD IS '퇴직사유코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.LVABSN_RSN_CD IS '휴직사유코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.JBTTL_CD IS '직책코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.PSTN_CD IS '직급코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.OCPT_CD IS '직종코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.WORK_CD IS '직무코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.POST_CD IS '직위코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.CTR_CLS_CD IS '계약유형코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.WORK_JOB_CLS_CD IS '근무직유형코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.EMPT_FORM_CD IS '고용형태코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.SAL_CLS_CD IS '급여유형코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.WORK_HOUR_GRP_CD IS '근무시간그룹코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.ENT_STUD_SML_OGDP_YN IS '기업연구소소속여부';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.FRL_JOB_SWH_DT IS '정규직전환일';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.CHNCRT_FLNM IS '한자성명';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.ENG_FLNM IS '영어성명';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.MILS_DV_CD IS '병역구분코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.ACBG_DV_CD IS '학력구분코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.SPT_FMAL_YN IS '부양여성여부';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.MRG_YN IS '결혼여부';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.MRG_DT IS '결혼일';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.DSBLT_GRAD_CD IS '장애등급코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.DSBLT_MTTR_CN IS '장애사항내용';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.RWDPTR_MTTR_CD IS '보훈사항코드';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.ZIP_NO IS '우편번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.ADDR IS '주소';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.DTL_ADDR IS '상세주소';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.HTEL_NO IS '집전화번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.HP_NO IS '휴대전화번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.CO_EMAIL_ADDR IS '회사이메일주소';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.PRSN_EMAIL_ADDR IS '개인이메일주소';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.INOUT_ID_NO IS '출입식별번호';
COMMENT ON COLUMN TB_HR_HRA_INFO_BAS_M.NTN_STUD_PRSN_NO IS '국가연구자번호';
