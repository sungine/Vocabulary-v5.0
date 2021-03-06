/**************************************************************************
* Copyright 2016 Observational Health Data Sciences and Informatics (OHDSI)
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
* 
* Authors: Timur Vakhitov, Christian Reich
* Date: 2016
**************************************************************************/

CREATE TABLE hlgt_pref_term
(
   hlgt_code          NUMBER,
   hlgt_name          VARCHAR2 (100),
   hlgt_whoart_code   VARCHAR2 (100),
   hlgt_harts_code    NUMBER,
   hlgt_costart_sym   VARCHAR2 (100),
   hlgt_icd9_code     VARCHAR2 (100),
   hlgt_icd9cm_code   VARCHAR2 (100),
   hlgt_icd10_code    VARCHAR2 (100),
   hlgt_jart_code     VARCHAR2 (100)
);

CREATE TABLE hlgt_hlt_comp
(
   hlgt_code   NUMBER,
   hlt_code    NUMBER
);

CREATE TABLE hlt_pref_term
(
   hlt_code          NUMBER,
   hlt_name          VARCHAR2 (100),
   hlt_whoart_code   VARCHAR2 (100),
   hlt_harts_code    NUMBER,
   hlt_costart_sym   VARCHAR2 (100),
   hlt_icd9_code     VARCHAR2 (100),
   hlt_icd9cm_code   VARCHAR2 (100),
   hlt_icd10_code    VARCHAR2 (100),
   hlt_jart_code     VARCHAR2 (100)
);

CREATE TABLE hlt_pref_comp
(
   hlt_code   NUMBER,
   pt_code    NUMBER
);

CREATE TABLE low_level_term
(
   llt_code          NUMBER,
   llt_name          VARCHAR2 (100),
   pt_code           NUMBER,
   llt_whoart_code   VARCHAR2 (100),
   llt_harts_code    NUMBER,
   llt_costart_sym   VARCHAR2 (100),
   llt_icd9_code     VARCHAR2 (100),
   llt_icd9cm_code   VARCHAR2 (100),
   llt_icd10_code    VARCHAR2 (100),
   llt_currency      VARCHAR2 (100),
   llt_jart_code     VARCHAR2 (100)
);

CREATE TABLE md_hierarchy
(
   pt_code          NUMBER,
   hlt_code         NUMBER,
   hlgt_code        NUMBER,
   soc_code         NUMBER,
   pt_name          VARCHAR2 (100),
   hlt_name         VARCHAR2 (100),
   hlgt_name        VARCHAR2 (100),
   soc_name         VARCHAR2 (100),
   soc_abbrev       VARCHAR2 (100),
   null_field       VARCHAR2 (100),
   pt_soc_code      NUMBER,
   primary_soc_fg   VARCHAR2 (100)
);

CREATE TABLE pref_term
(
   pt_code          NUMBER,
   pt_name          VARCHAR2 (100),
   null_field       VARCHAR2 (100),
   pt_soc_code      NUMBER,
   pt_whoart_code   VARCHAR2 (100),
   pt_harts_code    NUMBER,
   pt_costart_sym   VARCHAR2 (100),
   pt_icd9_code     VARCHAR2 (100),
   pt_icd9cm_code   VARCHAR2 (100),
   pt_icd10_code    VARCHAR2 (100),
   pt_jart_code     VARCHAR2 (100)
);

CREATE TABLE soc_term
(
   soc_code          NUMBER,
   soc_name          VARCHAR2 (100),
   soc_abbrev        VARCHAR2 (100),
   soc_whoart_code   VARCHAR2 (100),
   soc_harts_code    NUMBER,
   soc_costart_sym   VARCHAR2 (100),
   soc_icd9_code     VARCHAR2 (100),
   soc_icd9cm_code   VARCHAR2 (100),
   soc_icd10_code    VARCHAR2 (100),
   soc_jart_code     VARCHAR2 (100)
);

CREATE TABLE soc_hlgt_comp
(
   soc_code    NUMBER,
   hlgt_code   NUMBER
);