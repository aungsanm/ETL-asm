CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    DO $EF$
    BEGIN
        IF NOT EXISTS(SELECT 1 FROM pg_namespace WHERE nspname = 'sapdata') THEN
            CREATE SCHEMA sapdata;
        END IF;
    END $EF$;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."CRD1" (
        "Address" text NULL,
        "CardCode" text NULL,
        "Street" text NULL,
        "Block" text NULL,
        "ZipCode" text NULL,
        "City" text NULL,
        "County" text NULL,
        "Country" text NULL,
        "State" text NULL,
        "UserSign" integer NOT NULL,
        "LogInstanc" integer NOT NULL,
        "ObjType" text NULL,
        "LicTradNum" text NULL,
        "LineNum" integer NOT NULL,
        "TaxCode" text NULL,
        "Building" text NULL,
        "AdresType" text NULL,
        "Address2" text NULL,
        "Address3" text NULL,
        "AddrType" text NULL,
        "StreetNo" text NULL,
        "AltCrdName" text NULL,
        "AltTaxId" text NULL,
        "TaxOffice" text NULL,
        "GlblLocNum" text NULL,
        "Ntnlty" text NULL,
        "DIOTNat" text NULL,
        "TaaSEnbl" text NULL,
        "GSTRegnNo" text NULL,
        "GSTType" integer NOT NULL,
        "CreateDate" timestamp without time zone NULL,
        "CreateTS" integer NOT NULL,
        "EncryptIV" text NULL,
        "MYFType" text NULL,
        "VatResDate" timestamp without time zone NULL,
        "VatResCode" integer NOT NULL,
        "U_CXS_FRNM" text NULL,
        "U_CXS_LSNM" text NULL,
        "U_CXS_PHNO" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."IGE1" (
        "DocEntry" integer NOT NULL,
        "LineNum" integer NOT NULL,
        "TargetType" integer NOT NULL,
        "TrgetEntry" integer NOT NULL,
        "BaseRef" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "BaseLine" integer NOT NULL,
        "LineStatus" text NULL,
        "ItemCode" text NULL,
        "Dscription" text NULL,
        "Quantity" numeric NOT NULL,
        "ShipDate" timestamp without time zone NULL,
        "OpenQty" numeric NOT NULL,
        "Price" numeric NOT NULL,
        "Currency" text NULL,
        "Rate" numeric NOT NULL,
        "DiscPrcnt" numeric NOT NULL,
        "LineTotal" numeric NOT NULL,
        "TotalFrgn" numeric NOT NULL,
        "OpenSum" numeric NOT NULL,
        "OpenSumFC" numeric NOT NULL,
        "VendorNum" text NULL,
        "SerialNum" text NULL,
        "WhsCode" text NULL,
        "SlpCode" integer NOT NULL,
        "Commission" numeric NOT NULL,
        "TreeType" text NULL,
        "AcctCode" text NULL,
        "TaxStatus" text NULL,
        "GrossBuyPr" numeric NOT NULL,
        "PriceBefDi" numeric NOT NULL,
        "DocDate" timestamp without time zone NULL,
        "Flags" integer NOT NULL,
        "OpenCreQty" numeric NOT NULL,
        "UseBaseUn" text NULL,
        "SubCatNum" text NULL,
        "BaseCard" text NULL,
        "TotalSumSy" numeric NOT NULL,
        "OpenSumSys" numeric NOT NULL,
        "InvntSttus" text NULL,
        "OcrCode" text NULL,
        "Project" text NULL,
        "CodeBars" text NULL,
        "VatPrcnt" numeric NOT NULL,
        "VatGroup" text NULL,
        "PriceAfVAT" numeric NOT NULL,
        "Height1" numeric NOT NULL,
        "Hght1Unit" smallint NOT NULL,
        "Height2" numeric NOT NULL,
        "Hght2Unit" smallint NOT NULL,
        "Width1" numeric NOT NULL,
        "Wdth1Unit" smallint NOT NULL,
        "Width2" numeric NOT NULL,
        "Wdth2Unit" smallint NOT NULL,
        "Length1" numeric NOT NULL,
        "Len1Unit" smallint NOT NULL,
        length2 numeric NOT NULL,
        "Len2Unit" smallint NOT NULL,
        "Volume" numeric NOT NULL,
        "VolUnit" smallint NOT NULL,
        "Weight1" numeric NOT NULL,
        "Wght1Unit" smallint NOT NULL,
        "Weight2" numeric NOT NULL,
        "Wght2Unit" smallint NOT NULL,
        "Factor1" numeric NOT NULL,
        "Factor2" numeric NOT NULL,
        "Factor3" numeric NOT NULL,
        "Factor4" numeric NOT NULL,
        "PackQty" numeric NOT NULL,
        "UpdInvntry" text NULL,
        "BaseDocNum" integer NOT NULL,
        "BaseAtCard" text NULL,
        "SWW" text NULL,
        "VatSum" numeric NOT NULL,
        "VatSumFrgn" numeric NOT NULL,
        "VatSumSy" numeric NOT NULL,
        "FinncPriod" integer NOT NULL,
        "ObjType" text NULL,
        "LogInstanc" integer NOT NULL,
        "BlockNum" text NULL,
        "ImportLog" text NULL,
        "DedVatSum" numeric NOT NULL,
        "DedVatSumF" numeric NOT NULL,
        "DedVatSumS" numeric NOT NULL,
        "IsAqcuistn" text NULL,
        "DistribSum" numeric NOT NULL,
        "DstrbSumFC" numeric NOT NULL,
        "DstrbSumSC" numeric NOT NULL,
        "GrssProfit" numeric NOT NULL,
        "GrssProfSC" numeric NOT NULL,
        "GrssProfFC" numeric NOT NULL,
        "VisOrder" integer NOT NULL,
        "INMPrice" numeric NOT NULL,
        "PoTrgNum" integer NOT NULL,
        "PoTrgEntry" text NULL,
        "DropShip" text NULL,
        "PoLineNum" integer NOT NULL,
        "Address" text NULL,
        "TaxCode" text NULL,
        "TaxType" text NULL,
        "OrigItem" text NULL,
        "BackOrdr" text NULL,
        "FreeTxt" text NULL,
        "PickStatus" text NULL,
        "PickOty" numeric NOT NULL,
        "PickIdNo" integer NOT NULL,
        "TrnsCode" smallint NOT NULL,
        "VatAppld" numeric NOT NULL,
        "VatAppldFC" numeric NOT NULL,
        "VatAppldSC" numeric NOT NULL,
        "BaseQty" numeric NOT NULL,
        "BaseOpnQty" numeric NOT NULL,
        "VatDscntPr" numeric NOT NULL,
        "WtLiable" text NULL,
        "DeferrTax" text NULL,
        "EquVatPer" numeric NOT NULL,
        "EquVatSum" numeric NOT NULL,
        "EquVatSumF" numeric NOT NULL,
        "EquVatSumS" numeric NOT NULL,
        "LineVat" numeric NOT NULL,
        "LineVatlF" numeric NOT NULL,
        "LineVatS" numeric NOT NULL,
        "unitMsr" text NULL,
        "NumPerMsr" numeric NOT NULL,
        "CEECFlag" text NULL,
        "ToStock" numeric NOT NULL,
        "ToDiff" numeric NOT NULL,
        "ExciseAmt" numeric NOT NULL,
        "TaxPerUnit" numeric NOT NULL,
        "TotInclTax" numeric NOT NULL,
        "CountryOrg" text NULL,
        "StckDstSum" numeric NOT NULL,
        "ReleasQtty" numeric NOT NULL,
        "LineType" text NULL,
        "TranType" text NULL,
        "Text" text NULL,
        "OwnerCode" integer NOT NULL,
        "StockPrice" numeric NOT NULL,
        "ConsumeFCT" text NULL,
        "LstByDsSum" numeric NOT NULL,
        "StckINMPr" numeric NOT NULL,
        "LstBINMPr" numeric NOT NULL,
        "StckDstFc" numeric NOT NULL,
        "StckDstSc" numeric NOT NULL,
        "LstByDsFc" numeric NOT NULL,
        "LstByDsSc" numeric NOT NULL,
        "StockSum" numeric NOT NULL,
        "StockSumFc" numeric NOT NULL,
        "StockSumSc" numeric NOT NULL,
        "StckSumApp" numeric NOT NULL,
        "StckAppFc" numeric NOT NULL,
        "StckAppSc" numeric NOT NULL,
        "ShipToCode" text NULL,
        "ShipToDesc" text NULL,
        "StckAppD" numeric NOT NULL,
        "StckAppDFC" numeric NOT NULL,
        "StckAppDSC" numeric NOT NULL,
        "BasePrice" text NULL,
        "GTotal" numeric NOT NULL,
        "GTotalFC" numeric NOT NULL,
        "GTotalSC" numeric NOT NULL,
        "DistribExp" text NULL,
        "DescOW" text NULL,
        "DetailsOW" text NULL,
        "GrossBase" smallint NOT NULL,
        "VatWoDpm" numeric NOT NULL,
        "VatWoDpmFc" numeric NOT NULL,
        "VatWoDpmSc" numeric NOT NULL,
        "CFOPCode" text NULL,
        "CSTCode" text NULL,
        "Usage" integer NOT NULL,
        "TaxOnly" text NULL,
        "WtCalced" text NULL,
        "QtyToShip" numeric NOT NULL,
        "DelivrdQty" numeric NOT NULL,
        "OrderedQty" numeric NOT NULL,
        "CogsOcrCod" text NULL,
        "CiOppLineN" integer NOT NULL,
        "CogsAcct" text NULL,
        "ChgAsmBoMW" text NULL,
        "ActDelDate" timestamp without time zone NULL,
        "OcrCode2" text NULL,
        "OcrCode3" text NULL,
        "OcrCode4" text NULL,
        "OcrCode5" text NULL,
        "TaxDistSum" numeric NOT NULL,
        "TaxDistSFC" numeric NOT NULL,
        "TaxDistSSC" numeric NOT NULL,
        "PostTax" text NULL,
        "Excisable" text NULL,
        "AssblValue" numeric NOT NULL,
        "RG23APart1" integer NOT NULL,
        "RG23APart2" integer NOT NULL,
        "RG23CPart1" integer NOT NULL,
        "RG23CPart2" integer NOT NULL,
        "CogsOcrCo2" text NULL,
        "CogsOcrCo3" text NULL,
        "CogsOcrCo4" text NULL,
        "CogsOcrCo5" text NULL,
        "LnExcised" text NULL,
        "LocCode" integer NOT NULL,
        "StockValue" numeric NOT NULL,
        "GPTtlBasPr" numeric NOT NULL,
        "unitMsr2" text NULL,
        "NumPerMsr2" numeric NOT NULL,
        "SpecPrice" text NULL,
        "CSTfIPI" text NULL,
        "CSTfPIS" text NULL,
        "CSTfCOFINS" text NULL,
        "ExLineNo" text NULL,
        "isSrvCall" text NULL,
        "PQTReqQty" numeric NOT NULL,
        "PQTReqDate" timestamp without time zone NULL,
        "PcDocType" integer NOT NULL,
        "PcQuantity" numeric NOT NULL,
        "LinManClsd" text NULL,
        "VatGrpSrc" text NULL,
        "NoInvtryMv" text NULL,
        "ActBaseEnt" integer NOT NULL,
        "ActBaseLn" integer NOT NULL,
        "ActBaseNum" integer NOT NULL,
        "OpenRtnQty" numeric NOT NULL,
        "AgrNo" integer NOT NULL,
        "AgrLnNum" integer NOT NULL,
        "CredOrigin" text NULL,
        "Surpluses" numeric NOT NULL,
        "DefBreak" numeric NOT NULL,
        "Shortages" numeric NOT NULL,
        "UomEntry" integer NOT NULL,
        "UomEntry2" integer NOT NULL,
        "UomCode" text NULL,
        "UomCode2" text NULL,
        "FromWhsCod" text NULL,
        "NeedQty" text NULL,
        "PartRetire" text NULL,
        "RetireQty" numeric NOT NULL,
        "RetireAPC" numeric NOT NULL,
        "RetirAPCFC" numeric NOT NULL,
        "RetirAPCSC" numeric NOT NULL,
        "InvQty" numeric NOT NULL,
        "OpenInvQty" numeric NOT NULL,
        "EnSetCost" text NULL,
        "RetCost" numeric NOT NULL,
        "Incoterms" integer NOT NULL,
        "TransMod" integer NOT NULL,
        "LineVendor" text NULL,
        "DistribIS" text NULL,
        "ISDistrb" numeric NOT NULL,
        "ISDistrbFC" numeric NOT NULL,
        "ISDistrbSC" numeric NOT NULL,
        "IsByPrdct" text NULL,
        "ItemType" integer NOT NULL,
        "PriceEdit" text NULL,
        "PrntLnNum" integer NOT NULL,
        "LinePoPrss" text NULL,
        "FreeChrgBP" text NULL,
        "TaxRelev" text NULL,
        "LegalText" text NULL,
        "ThirdParty" text NULL,
        "LicTradNum" text NULL,
        "InvQtyOnly" text NULL,
        "UnencReasn" integer NOT NULL,
        "ShipFromCo" text NULL,
        "ShipFromDe" text NULL,
        "FisrtBin" text NULL,
        "AllocBinC" text NULL,
        "ExpType" text NULL,
        "ExpUUID" text NULL,
        "ExpOpType" text NULL,
        "DIOTNat" text NULL,
        "MYFtype" text NULL,
        "GPBefDisc" numeric NOT NULL,
        "ReturnRsn" smallint NOT NULL,
        "ReturnAct" smallint NOT NULL,
        "StgSeqNum" integer NOT NULL,
        "StgEntry" integer NOT NULL,
        "StgDesc" text NULL,
        "ItmTaxType" text NULL,
        "SacEntry" integer NOT NULL,
        "NCMCode" integer NOT NULL,
        "HsnEntry" integer NOT NULL,
        "OriBAbsEnt" integer NOT NULL,
        "OriBLinNum" integer NOT NULL,
        "OriBDocTyp" integer NOT NULL,
        "IsPrscGood" text NULL,
        "IsCstmAct" text NULL,
        "EncryptIV" text NULL,
        "ExtTaxRate" numeric NOT NULL,
        "ExtTaxSum" numeric NOT NULL,
        "TaxAmtSrc" text NULL,
        "ExtTaxSumF" numeric NOT NULL,
        "ExtTaxSumS" numeric NOT NULL,
        "StdItemId" integer NOT NULL,
        "CommClass" integer NOT NULL,
        "VatExEntry" integer NOT NULL,
        "VatExLN" smallint NOT NULL,
        "NatOfTrans" integer NOT NULL,
        "ISDtCryImp" text NULL,
        "ISDtRgnImp" integer NOT NULL,
        "ISOrCryExp" text NULL,
        "ISOrRgnExp" integer NOT NULL,
        "NVECode" text NULL,
        "PoNum" text NULL,
        "PoItmNum" integer NOT NULL,
        "IndEscala" text NULL,
        "CESTCode" integer NOT NULL,
        "CtrSealQty" numeric NOT NULL,
        "CNJPMan" text NULL,
        "UFFiscBene" text NULL,
        "CUSplit" text NULL,
        "LegalTIMD" text NULL,
        "LegalTTCA" text NULL,
        "LegalTW" text NULL,
        "LegalTCD" text NULL,
        "U_CXS_TDKY" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_U_Negative" numeric NOT NULL,
        "U_Expired" text NULL,
        "U_Qty" text NULL,
        "U_Price" text NULL,
        "U_Unit" text NULL,
        "U_MYANAMRLABEL" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."IGN1" (
        "DocEntry" integer NOT NULL,
        "LineNum" integer NOT NULL,
        "TargetType" integer NOT NULL,
        "TrgetEntry" integer NOT NULL,
        "BaseRef" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "BaseLine" integer NOT NULL,
        "LineStatus" text NULL,
        "ItemCode" text NULL,
        "Dscription" text NULL,
        "Quantity" numeric NOT NULL,
        "ShipDate" timestamp without time zone NULL,
        "OpenQty" numeric NOT NULL,
        "Price" numeric NOT NULL,
        "Currency" text NULL,
        "Rate" numeric NOT NULL,
        "DiscPrcnt" numeric NOT NULL,
        "LineTotal" numeric NOT NULL,
        "TotalFrgn" numeric NOT NULL,
        "OpenSum" numeric NOT NULL,
        "OpenSumFC" numeric NOT NULL,
        "VendorNum" text NULL,
        "SerialNum" text NULL,
        "WhsCode" text NULL,
        "SlpCode" integer NOT NULL,
        "Commission" numeric NOT NULL,
        "TreeType" text NULL,
        "AcctCode" text NULL,
        "TaxStatus" text NULL,
        "GrossBuyPr" numeric NOT NULL,
        "PriceBefDi" numeric NOT NULL,
        "DocDate" timestamp without time zone NULL,
        "Flags" integer NOT NULL,
        "OpenCreQty" numeric NOT NULL,
        "UseBaseUn" text NULL,
        "SubCatNum" text NULL,
        "BaseCard" text NULL,
        "TotalSumSy" numeric NOT NULL,
        "OpenSumSys" numeric NOT NULL,
        "InvntSttus" text NULL,
        "OcrCode" text NULL,
        "Project" text NULL,
        "CodeBars" text NULL,
        "VatPrcnt" numeric NOT NULL,
        "VatGroup" text NULL,
        "PriceAfVAT" numeric NOT NULL,
        "Height1" numeric NOT NULL,
        "Hght1Unit" smallint NOT NULL,
        "Height2" numeric NOT NULL,
        "Hght2Unit" smallint NOT NULL,
        "Width1" numeric NOT NULL,
        "Wdth1Unit" smallint NOT NULL,
        "Width2" numeric NOT NULL,
        "Wdth2Unit" smallint NOT NULL,
        "Length1" numeric NOT NULL,
        "Len1Unit" smallint NOT NULL,
        length2 numeric NOT NULL,
        "Len2Unit" smallint NOT NULL,
        "Volume" numeric NOT NULL,
        "VolUnit" smallint NOT NULL,
        "Weight1" numeric NOT NULL,
        "Wght1Unit" smallint NOT NULL,
        "Weight2" numeric NOT NULL,
        "Wght2Unit" smallint NOT NULL,
        "Factor1" numeric NOT NULL,
        "Factor2" numeric NOT NULL,
        "Factor3" numeric NOT NULL,
        "Factor4" numeric NOT NULL,
        "PackQty" numeric NOT NULL,
        "UpdInvntry" text NULL,
        "BaseDocNum" integer NOT NULL,
        "BaseAtCard" text NULL,
        "SWW" text NULL,
        "VatSum" numeric NOT NULL,
        "VatSumFrgn" numeric NOT NULL,
        "VatSumSy" numeric NOT NULL,
        "FinncPriod" integer NOT NULL,
        "ObjType" text NULL,
        "LogInstanc" integer NOT NULL,
        "BlockNum" text NULL,
        "ImportLog" text NULL,
        "DedVatSum" numeric NOT NULL,
        "DedVatSumF" numeric NOT NULL,
        "DedVatSumS" numeric NOT NULL,
        "IsAqcuistn" text NULL,
        "DistribSum" numeric NOT NULL,
        "DstrbSumFC" numeric NOT NULL,
        "DstrbSumSC" numeric NOT NULL,
        "GrssProfit" numeric NOT NULL,
        "GrssProfSC" numeric NOT NULL,
        "GrssProfFC" numeric NOT NULL,
        "VisOrder" integer NOT NULL,
        "INMPrice" numeric NOT NULL,
        "PoTrgNum" integer NOT NULL,
        "PoTrgEntry" text NULL,
        "DropShip" text NULL,
        "PoLineNum" integer NOT NULL,
        "Address" text NULL,
        "TaxCode" text NULL,
        "TaxType" text NULL,
        "OrigItem" text NULL,
        "BackOrdr" text NULL,
        "FreeTxt" text NULL,
        "PickStatus" text NULL,
        "PickOty" numeric NOT NULL,
        "PickIdNo" integer NOT NULL,
        "TrnsCode" smallint NOT NULL,
        "VatAppld" numeric NOT NULL,
        "VatAppldFC" numeric NOT NULL,
        "VatAppldSC" numeric NOT NULL,
        "BaseQty" numeric NOT NULL,
        "BaseOpnQty" numeric NOT NULL,
        "VatDscntPr" numeric NOT NULL,
        "WtLiable" text NULL,
        "DeferrTax" text NULL,
        "EquVatPer" numeric NOT NULL,
        "EquVatSum" numeric NOT NULL,
        "EquVatSumF" numeric NOT NULL,
        "EquVatSumS" numeric NOT NULL,
        "LineVat" numeric NOT NULL,
        "LineVatlF" numeric NOT NULL,
        "LineVatS" numeric NOT NULL,
        "unitMsr" text NULL,
        "NumPerMsr" numeric NOT NULL,
        "CEECFlag" text NULL,
        "ToStock" numeric NOT NULL,
        "ToDiff" numeric NOT NULL,
        "ExciseAmt" numeric NOT NULL,
        "TaxPerUnit" numeric NOT NULL,
        "TotInclTax" numeric NOT NULL,
        "CountryOrg" text NULL,
        "StckDstSum" numeric NOT NULL,
        "ReleasQtty" numeric NOT NULL,
        "LineType" text NULL,
        "TranType" text NULL,
        "Text" text NULL,
        "OwnerCode" integer NOT NULL,
        "StockPrice" numeric NOT NULL,
        "ConsumeFCT" text NULL,
        "LstByDsSum" numeric NOT NULL,
        "StckINMPr" numeric NOT NULL,
        "LstBINMPr" numeric NOT NULL,
        "StckDstFc" numeric NOT NULL,
        "StckDstSc" numeric NOT NULL,
        "LstByDsFc" numeric NOT NULL,
        "LstByDsSc" numeric NOT NULL,
        "StockSum" numeric NOT NULL,
        "StockSumFc" numeric NOT NULL,
        "StockSumSc" numeric NOT NULL,
        "StckSumApp" numeric NOT NULL,
        "StckAppFc" numeric NOT NULL,
        "StckAppSc" numeric NOT NULL,
        "ShipToCode" text NULL,
        "ShipToDesc" text NULL,
        "StckAppD" numeric NOT NULL,
        "StckAppDFC" numeric NOT NULL,
        "StckAppDSC" numeric NOT NULL,
        "BasePrice" text NULL,
        "GTotal" numeric NOT NULL,
        "GTotalFC" numeric NOT NULL,
        "GTotalSC" numeric NOT NULL,
        "DistribExp" text NULL,
        "DescOW" text NULL,
        "DetailsOW" text NULL,
        "GrossBase" smallint NOT NULL,
        "VatWoDpm" numeric NOT NULL,
        "VatWoDpmFc" numeric NOT NULL,
        "VatWoDpmSc" numeric NOT NULL,
        "CFOPCode" text NULL,
        "CSTCode" text NULL,
        "Usage" integer NOT NULL,
        "TaxOnly" text NULL,
        "WtCalced" text NULL,
        "QtyToShip" numeric NOT NULL,
        "DelivrdQty" numeric NOT NULL,
        "OrderedQty" numeric NOT NULL,
        "CogsOcrCod" text NULL,
        "CiOppLineN" integer NOT NULL,
        "CogsAcct" text NULL,
        "ChgAsmBoMW" text NULL,
        "ActDelDate" timestamp without time zone NULL,
        "OcrCode2" text NULL,
        "OcrCode3" text NULL,
        "OcrCode4" text NULL,
        "OcrCode5" text NULL,
        "TaxDistSum" numeric NOT NULL,
        "TaxDistSFC" numeric NOT NULL,
        "TaxDistSSC" numeric NOT NULL,
        "PostTax" text NULL,
        "Excisable" text NULL,
        "AssblValue" numeric NOT NULL,
        "RG23APart1" integer NOT NULL,
        "RG23APart2" integer NOT NULL,
        "RG23CPart1" integer NOT NULL,
        "RG23CPart2" integer NOT NULL,
        "CogsOcrCo2" text NULL,
        "CogsOcrCo3" text NULL,
        "CogsOcrCo4" text NULL,
        "CogsOcrCo5" text NULL,
        "LnExcised" text NULL,
        "LocCode" integer NOT NULL,
        "StockValue" numeric NOT NULL,
        "GPTtlBasPr" numeric NOT NULL,
        "unitMsr2" text NULL,
        "NumPerMsr2" numeric NOT NULL,
        "SpecPrice" text NULL,
        "CSTfIPI" text NULL,
        "CSTfPIS" text NULL,
        "CSTfCOFINS" text NULL,
        "ExLineNo" text NULL,
        "isSrvCall" text NULL,
        "PQTReqQty" numeric NOT NULL,
        "PQTReqDate" timestamp without time zone NULL,
        "PcDocType" integer NOT NULL,
        "PcQuantity" numeric NOT NULL,
        "LinManClsd" text NULL,
        "VatGrpSrc" text NULL,
        "NoInvtryMv" text NULL,
        "ActBaseEnt" integer NOT NULL,
        "ActBaseLn" integer NOT NULL,
        "ActBaseNum" integer NOT NULL,
        "OpenRtnQty" numeric NOT NULL,
        "AgrNo" integer NOT NULL,
        "AgrLnNum" integer NOT NULL,
        "CredOrigin" text NULL,
        "Surpluses" numeric NOT NULL,
        "DefBreak" numeric NOT NULL,
        "Shortages" numeric NOT NULL,
        "UomEntry" integer NOT NULL,
        "UomEntry2" integer NOT NULL,
        "UomCode" text NULL,
        "UomCode2" text NULL,
        "FromWhsCod" text NULL,
        "NeedQty" text NULL,
        "PartRetire" text NULL,
        "RetireQty" numeric NOT NULL,
        "RetireAPC" numeric NOT NULL,
        "RetirAPCFC" numeric NOT NULL,
        "RetirAPCSC" numeric NOT NULL,
        "InvQty" numeric NOT NULL,
        "OpenInvQty" numeric NOT NULL,
        "EnSetCost" text NULL,
        "RetCost" numeric NOT NULL,
        "Incoterms" integer NOT NULL,
        "TransMod" integer NOT NULL,
        "LineVendor" text NULL,
        "DistribIS" text NULL,
        "ISDistrb" numeric NOT NULL,
        "ISDistrbFC" numeric NOT NULL,
        "ISDistrbSC" numeric NOT NULL,
        "IsByPrdct" text NULL,
        "ItemType" integer NOT NULL,
        "PriceEdit" text NULL,
        "PrntLnNum" integer NOT NULL,
        "LinePoPrss" text NULL,
        "FreeChrgBP" text NULL,
        "TaxRelev" text NULL,
        "LegalText" text NULL,
        "ThirdParty" text NULL,
        "LicTradNum" text NULL,
        "InvQtyOnly" text NULL,
        "UnencReasn" integer NOT NULL,
        "ShipFromCo" text NULL,
        "ShipFromDe" text NULL,
        "FisrtBin" text NULL,
        "AllocBinC" text NULL,
        "ExpType" text NULL,
        "ExpUUID" text NULL,
        "ExpOpType" text NULL,
        "DIOTNat" text NULL,
        "MYFtype" text NULL,
        "GPBefDisc" numeric NOT NULL,
        "ReturnRsn" smallint NOT NULL,
        "ReturnAct" smallint NOT NULL,
        "StgSeqNum" integer NOT NULL,
        "StgEntry" integer NOT NULL,
        "StgDesc" text NULL,
        "ItmTaxType" text NULL,
        "SacEntry" integer NOT NULL,
        "NCMCode" integer NOT NULL,
        "HsnEntry" integer NOT NULL,
        "OriBAbsEnt" integer NOT NULL,
        "OriBLinNum" integer NOT NULL,
        "OriBDocTyp" integer NOT NULL,
        "IsPrscGood" text NULL,
        "IsCstmAct" text NULL,
        "EncryptIV" text NULL,
        "ExtTaxRate" numeric NOT NULL,
        "ExtTaxSum" numeric NOT NULL,
        "TaxAmtSrc" text NULL,
        "ExtTaxSumF" numeric NOT NULL,
        "ExtTaxSumS" numeric NOT NULL,
        "StdItemId" integer NOT NULL,
        "CommClass" integer NOT NULL,
        "VatExEntry" integer NOT NULL,
        "VatExLN" smallint NOT NULL,
        "NatOfTrans" integer NOT NULL,
        "ISDtCryImp" text NULL,
        "ISDtRgnImp" integer NOT NULL,
        "ISOrCryExp" text NULL,
        "ISOrRgnExp" integer NOT NULL,
        "NVECode" text NULL,
        "PoNum" text NULL,
        "PoItmNum" integer NOT NULL,
        "IndEscala" text NULL,
        "CESTCode" integer NOT NULL,
        "CtrSealQty" numeric NOT NULL,
        "CNJPMan" text NULL,
        "UFFiscBene" text NULL,
        "CUSplit" text NULL,
        "LegalTIMD" text NULL,
        "LegalTTCA" text NULL,
        "LegalTW" text NULL,
        "LegalTCD" text NULL,
        "U_CXS_TDKY" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_U_Negative" numeric NOT NULL,
        "U_Expired" text NULL,
        "U_Qty" text NULL,
        "U_Price" text NULL,
        "U_Unit" text NULL,
        "U_MYANAMRLABEL" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."INV1" (
        "DocEntry" integer NOT NULL,
        "LineNum" integer NOT NULL,
        "TargetType" integer NOT NULL,
        "TrgetEntry" integer NOT NULL,
        "BaseRef" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "BaseLine" integer NOT NULL,
        "LineStatus" text NULL,
        "ItemCode" text NULL,
        "Dscription" text NULL,
        "Quantity" numeric NOT NULL,
        "ShipDate" timestamp without time zone NULL,
        "OpenQty" numeric NOT NULL,
        "Price" numeric NOT NULL,
        "Currency" text NULL,
        "Rate" numeric NOT NULL,
        "DiscPrcnt" numeric NOT NULL,
        "LineTotal" numeric NOT NULL,
        "TotalFrgn" numeric NOT NULL,
        "OpenSum" numeric NOT NULL,
        "OpenSumFC" numeric NOT NULL,
        "VendorNum" text NULL,
        "SerialNum" text NULL,
        "WhsCode" text NULL,
        "SlpCode" integer NOT NULL,
        "Commission" numeric NOT NULL,
        "TreeType" text NULL,
        "AcctCode" text NULL,
        "TaxStatus" text NULL,
        "GrossBuyPr" numeric NOT NULL,
        "PriceBefDi" numeric NOT NULL,
        "DocDate" timestamp without time zone NULL,
        "Flags" integer NOT NULL,
        "OpenCreQty" numeric NOT NULL,
        "UseBaseUn" text NULL,
        "SubCatNum" text NULL,
        "BaseCard" text NULL,
        "TotalSumSy" numeric NOT NULL,
        "OpenSumSys" numeric NOT NULL,
        "InvntSttus" text NULL,
        "OcrCode" text NULL,
        "Project" text NULL,
        "CodeBars" text NULL,
        "VatPrcnt" numeric NOT NULL,
        "VatGroup" text NULL,
        "PriceAfVAT" numeric NOT NULL,
        "Height1" numeric NOT NULL,
        "Hght1Unit" smallint NOT NULL,
        "Height2" numeric NOT NULL,
        "Hght2Unit" smallint NOT NULL,
        "Width1" numeric NOT NULL,
        "Wdth1Unit" smallint NOT NULL,
        "Width2" numeric NOT NULL,
        "Wdth2Unit" smallint NOT NULL,
        "Length1" numeric NOT NULL,
        "Len1Unit" smallint NOT NULL,
        length2 numeric NOT NULL,
        "Len2Unit" smallint NOT NULL,
        "Volume" numeric NOT NULL,
        "VolUnit" smallint NOT NULL,
        "Weight1" numeric NOT NULL,
        "Wght1Unit" smallint NOT NULL,
        "Weight2" numeric NOT NULL,
        "Wght2Unit" smallint NOT NULL,
        "Factor1" numeric NOT NULL,
        "Factor2" numeric NOT NULL,
        "Factor3" numeric NOT NULL,
        "Factor4" numeric NOT NULL,
        "PackQty" numeric NOT NULL,
        "UpdInvntry" text NULL,
        "BaseDocNum" integer NOT NULL,
        "BaseAtCard" text NULL,
        "SWW" text NULL,
        "VatSum" numeric NOT NULL,
        "VatSumFrgn" numeric NOT NULL,
        "VatSumSy" numeric NOT NULL,
        "FinncPriod" integer NOT NULL,
        "ObjType" text NULL,
        "LogInstanc" integer NOT NULL,
        "BlockNum" text NULL,
        "ImportLog" text NULL,
        "DedVatSum" numeric NOT NULL,
        "DedVatSumF" numeric NOT NULL,
        "DedVatSumS" numeric NOT NULL,
        "IsAqcuistn" text NULL,
        "DistribSum" numeric NOT NULL,
        "DstrbSumFC" numeric NOT NULL,
        "DstrbSumSC" numeric NOT NULL,
        "GrssProfit" numeric NOT NULL,
        "GrssProfSC" numeric NOT NULL,
        "GrssProfFC" numeric NOT NULL,
        "VisOrder" integer NOT NULL,
        "INMPrice" numeric NOT NULL,
        "PoTrgNum" integer NOT NULL,
        "PoTrgEntry" text NULL,
        "DropShip" text NULL,
        "PoLineNum" integer NOT NULL,
        "Address" text NULL,
        "TaxCode" text NULL,
        "TaxType" text NULL,
        "OrigItem" text NULL,
        "BackOrdr" text NULL,
        "FreeTxt" text NULL,
        "PickStatus" text NULL,
        "PickOty" numeric NOT NULL,
        "PickIdNo" integer NOT NULL,
        "TrnsCode" smallint NOT NULL,
        "VatAppld" numeric NOT NULL,
        "VatAppldFC" numeric NOT NULL,
        "VatAppldSC" numeric NOT NULL,
        "BaseQty" numeric NOT NULL,
        "BaseOpnQty" numeric NOT NULL,
        "VatDscntPr" numeric NOT NULL,
        "WtLiable" text NULL,
        "DeferrTax" text NULL,
        "EquVatPer" numeric NOT NULL,
        "EquVatSum" numeric NOT NULL,
        "EquVatSumF" numeric NOT NULL,
        "EquVatSumS" numeric NOT NULL,
        "LineVat" numeric NOT NULL,
        "LineVatlF" numeric NOT NULL,
        "LineVatS" numeric NOT NULL,
        "unitMsr" text NULL,
        "NumPerMsr" numeric NOT NULL,
        "CEECFlag" text NULL,
        "ToStock" numeric NOT NULL,
        "ToDiff" numeric NOT NULL,
        "ExciseAmt" numeric NOT NULL,
        "TaxPerUnit" numeric NOT NULL,
        "TotInclTax" numeric NOT NULL,
        "CountryOrg" text NULL,
        "StckDstSum" numeric NOT NULL,
        "ReleasQtty" numeric NOT NULL,
        "LineType" text NULL,
        "TranType" text NULL,
        "Text" text NULL,
        "OwnerCode" integer NOT NULL,
        "StockPrice" numeric NOT NULL,
        "ConsumeFCT" text NULL,
        "LstByDsSum" numeric NOT NULL,
        "StckINMPr" numeric NOT NULL,
        "LstBINMPr" numeric NOT NULL,
        "StckDstFc" numeric NOT NULL,
        "StckDstSc" numeric NOT NULL,
        "LstByDsFc" numeric NOT NULL,
        "LstByDsSc" numeric NOT NULL,
        "StockSum" numeric NOT NULL,
        "StockSumFc" numeric NOT NULL,
        "StockSumSc" numeric NOT NULL,
        "StckSumApp" numeric NOT NULL,
        "StckAppFc" numeric NOT NULL,
        "StckAppSc" numeric NOT NULL,
        "ShipToCode" text NULL,
        "ShipToDesc" text NULL,
        "StckAppD" numeric NOT NULL,
        "StckAppDFC" numeric NOT NULL,
        "StckAppDSC" numeric NOT NULL,
        "BasePrice" text NULL,
        "GTotal" numeric NOT NULL,
        "GTotalFC" numeric NOT NULL,
        "GTotalSC" numeric NOT NULL,
        "DistribExp" text NULL,
        "DescOW" text NULL,
        "DetailsOW" text NULL,
        "GrossBase" smallint NOT NULL,
        "VatWoDpm" numeric NOT NULL,
        "VatWoDpmFc" numeric NOT NULL,
        "VatWoDpmSc" numeric NOT NULL,
        "CFOPCode" text NULL,
        "CSTCode" text NULL,
        "Usage" integer NOT NULL,
        "TaxOnly" text NULL,
        "WtCalced" text NULL,
        "QtyToShip" numeric NOT NULL,
        "DelivrdQty" numeric NOT NULL,
        "OrderedQty" numeric NOT NULL,
        "CogsOcrCod" text NULL,
        "CiOppLineN" integer NOT NULL,
        "CogsAcct" text NULL,
        "ChgAsmBoMW" text NULL,
        "ActDelDate" timestamp without time zone NULL,
        "OcrCode2" text NULL,
        "OcrCode3" text NULL,
        "OcrCode4" text NULL,
        "OcrCode5" text NULL,
        "TaxDistSum" numeric NOT NULL,
        "TaxDistSFC" numeric NOT NULL,
        "TaxDistSSC" numeric NOT NULL,
        "PostTax" text NULL,
        "Excisable" text NULL,
        "AssblValue" numeric NOT NULL,
        "RG23APart1" integer NOT NULL,
        "RG23APart2" integer NOT NULL,
        "RG23CPart1" integer NOT NULL,
        "RG23CPart2" integer NOT NULL,
        "CogsOcrCo2" text NULL,
        "CogsOcrCo3" text NULL,
        "CogsOcrCo4" text NULL,
        "CogsOcrCo5" text NULL,
        "LnExcised" text NULL,
        "LocCode" integer NOT NULL,
        "StockValue" numeric NOT NULL,
        "GPTtlBasPr" numeric NOT NULL,
        "unitMsr2" text NULL,
        "NumPerMsr2" numeric NOT NULL,
        "SpecPrice" text NULL,
        "CSTfIPI" text NULL,
        "CSTfPIS" text NULL,
        "CSTfCOFINS" text NULL,
        "ExLineNo" text NULL,
        "isSrvCall" text NULL,
        "PQTReqQty" numeric NOT NULL,
        "PQTReqDate" timestamp without time zone NULL,
        "PcDocType" integer NOT NULL,
        "PcQuantity" numeric NOT NULL,
        "LinManClsd" text NULL,
        "VatGrpSrc" text NULL,
        "NoInvtryMv" text NULL,
        "ActBaseEnt" integer NOT NULL,
        "ActBaseLn" integer NOT NULL,
        "ActBaseNum" integer NOT NULL,
        "OpenRtnQty" numeric NOT NULL,
        "AgrNo" integer NOT NULL,
        "AgrLnNum" integer NOT NULL,
        "CredOrigin" text NULL,
        "Surpluses" numeric NOT NULL,
        "DefBreak" numeric NOT NULL,
        "Shortages" numeric NOT NULL,
        "UomEntry" integer NOT NULL,
        "UomEntry2" integer NOT NULL,
        "UomCode" text NULL,
        "UomCode2" text NULL,
        "FromWhsCod" text NULL,
        "NeedQty" text NULL,
        "PartRetire" text NULL,
        "RetireQty" numeric NOT NULL,
        "RetireAPC" numeric NOT NULL,
        "RetirAPCFC" numeric NOT NULL,
        "RetirAPCSC" numeric NOT NULL,
        "InvQty" numeric NOT NULL,
        "OpenInvQty" numeric NOT NULL,
        "EnSetCost" text NULL,
        "RetCost" numeric NOT NULL,
        "Incoterms" integer NOT NULL,
        "TransMod" integer NOT NULL,
        "LineVendor" text NULL,
        "DistribIS" text NULL,
        "ISDistrb" numeric NOT NULL,
        "ISDistrbFC" numeric NOT NULL,
        "ISDistrbSC" numeric NOT NULL,
        "IsByPrdct" text NULL,
        "ItemType" integer NOT NULL,
        "PriceEdit" text NULL,
        "PrntLnNum" integer NOT NULL,
        "LinePoPrss" text NULL,
        "FreeChrgBP" text NULL,
        "TaxRelev" text NULL,
        "LegalText" text NULL,
        "ThirdParty" text NULL,
        "LicTradNum" text NULL,
        "InvQtyOnly" text NULL,
        "UnencReasn" integer NOT NULL,
        "ShipFromCo" text NULL,
        "ShipFromDe" text NULL,
        "FisrtBin" text NULL,
        "AllocBinC" text NULL,
        "ExpType" text NULL,
        "ExpUUID" text NULL,
        "ExpOpType" text NULL,
        "DIOTNat" text NULL,
        "MYFtype" text NULL,
        "GPBefDisc" numeric NOT NULL,
        "ReturnRsn" smallint NOT NULL,
        "ReturnAct" smallint NOT NULL,
        "StgSeqNum" integer NOT NULL,
        "StgEntry" integer NOT NULL,
        "StgDesc" text NULL,
        "ItmTaxType" text NULL,
        "SacEntry" integer NOT NULL,
        "NCMCode" integer NOT NULL,
        "HsnEntry" integer NOT NULL,
        "OriBAbsEnt" integer NOT NULL,
        "OriBLinNum" integer NOT NULL,
        "OriBDocTyp" integer NOT NULL,
        "IsPrscGood" text NULL,
        "IsCstmAct" text NULL,
        "EncryptIV" text NULL,
        "ExtTaxRate" numeric NOT NULL,
        "ExtTaxSum" numeric NOT NULL,
        "TaxAmtSrc" text NULL,
        "ExtTaxSumF" numeric NOT NULL,
        "ExtTaxSumS" numeric NOT NULL,
        "StdItemId" integer NOT NULL,
        "CommClass" integer NOT NULL,
        "VatExEntry" integer NOT NULL,
        "VatExLN" smallint NOT NULL,
        "NatOfTrans" integer NOT NULL,
        "ISDtCryImp" text NULL,
        "ISDtRgnImp" integer NOT NULL,
        "ISOrCryExp" text NULL,
        "ISOrRgnExp" integer NOT NULL,
        "NVECode" text NULL,
        "PoNum" text NULL,
        "PoItmNum" integer NOT NULL,
        "IndEscala" text NULL,
        "CESTCode" integer NOT NULL,
        "CtrSealQty" numeric NOT NULL,
        "CNJPMan" text NULL,
        "UFFiscBene" text NULL,
        "CUSplit" text NULL,
        "LegalTIMD" text NULL,
        "LegalTTCA" text NULL,
        "LegalTW" text NULL,
        "LegalTCD" text NULL,
        "U_CXS_TDKY" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_U_Negative" numeric NOT NULL,
        "U_Expired" text NULL,
        "U_Qty" text NULL,
        "U_Price" text NULL,
        "U_Unit" text NULL,
        "U_MYANAMRLABEL" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."ITM1" (
        "ItemCode" text NULL,
        "PriceList" integer NULL,
        "Price" numeric NULL,
        "Currency" text NULL,
        "Ovrwritten" text NULL,
        "Factor" numeric NULL,
        "LogInstanc" integer NOT NULL,
        "ObjType" text NULL,
        "AddPrice1" numeric NULL,
        "Currency1" text NULL,
        "AddPrice2" numeric NULL,
        "Currency2" text NULL,
        "Ovrwrite1" text NULL,
        "Ovrwrite2" text NULL,
        "BasePLNum" integer NULL,
        "UomEntry" integer NOT NULL,
        "PriceType" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."ITM9" (
        "ItemCode" text NULL,
        "PriceList" smallint NOT NULL,
        "UomEntry" integer NOT NULL,
        "Factor" numeric NOT NULL,
        "Price" numeric NOT NULL,
        "Currency" text NULL,
        "AutoUpdate" text NULL,
        "AddPrice1" numeric NOT NULL,
        "Currency1" text NULL,
        "AddPrice2" numeric NOT NULL,
        "Currency2" text NULL,
        "LogInstanc" integer NULL,
        "ObjType" text NULL,
        "Factor1" numeric NOT NULL,
        "Factor2" numeric NOT NULL,
        "UpdateDate" timestamp without time zone NULL,
        "PriceType" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."LOG" (
        "ID" integer GENERATED BY DEFAULT AS IDENTITY,
        "Module" text NULL,
        "KeyCalue" text NULL,
        "Message" text NULL,
        "Status" text NULL,
        CONSTRAINT "PK_LOG" PRIMARY KEY ("ID")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OCRD" (
        "CardCode" text NOT NULL,
        "CardName" text NULL,
        "CardType" text NULL,
        "GroupCode" smallint NOT NULL,
        "CmpPrivate" text NULL,
        "Address" text NULL,
        "ZipCode" text NULL,
        "MailAddres" text NULL,
        "MailZipCod" text NULL,
        "Phone1" text NULL,
        "Phone2" text NULL,
        "Fax" text NULL,
        "CntctPrsn" text NULL,
        "Notes" text NULL,
        "Balance" numeric NOT NULL,
        "ChecksBal" numeric NOT NULL,
        "DNotesBal" numeric NOT NULL,
        "OrdersBal" numeric NOT NULL,
        "GroupNum" smallint NOT NULL,
        "CreditLine" numeric NOT NULL,
        "DebtLine" numeric NOT NULL,
        "Discount" numeric NOT NULL,
        "VatStatus" text NULL,
        "LicTradNum" text NULL,
        "DdctStatus" text NULL,
        "DdctPrcnt" numeric NOT NULL,
        "ValidUntil" timestamp without time zone NOT NULL,
        "Chrctrstcs" integer NOT NULL,
        "ExMatchNum" integer NOT NULL,
        "InMatchNum" integer NOT NULL,
        "ListNum" smallint NOT NULL,
        "DNoteBalFC" numeric NOT NULL,
        "OrderBalFC" numeric NOT NULL,
        "DNoteBalSy" numeric NOT NULL,
        "OrderBalSy" numeric NOT NULL,
        "Transfered" text NULL,
        "BalTrnsfrd" text NULL,
        "IntrstRate" numeric NOT NULL,
        "Commission" numeric NOT NULL,
        "CommGrCode" smallint NOT NULL,
        "Free_Text" text NULL,
        "SlpCode" integer NOT NULL,
        "PrevYearAc" text NULL,
        "Currency" text NULL,
        "RateDifAct" text NULL,
        "BalanceSys" numeric NOT NULL,
        "BalanceFC" numeric NOT NULL,
        "Protected" text NULL,
        "Cellular" text NULL,
        "AvrageLate" smallint NOT NULL,
        "City" text NULL,
        "County" text NULL,
        "Country" text NULL,
        "MailCity" text NULL,
        "MailCounty" text NULL,
        "MailCountr" text NULL,
        "E_Mail" text NULL,
        "Picture" text NULL,
        "DflAccount" text NULL,
        "DflBranch" text NULL,
        "BankCode" text NULL,
        "AddID" text NULL,
        "Pager" text NULL,
        "FatherCard" text NULL,
        "CardFName" text NULL,
        "FatherType" text NULL,
        "QryGroup1" text NULL,
        "QryGroup2" text NULL,
        "QryGroup3" text NULL,
        "QryGroup4" text NULL,
        "QryGroup5" text NULL,
        "QryGroup6" text NULL,
        "QryGroup7" text NULL,
        "QryGroup8" text NULL,
        "QryGroup9" text NULL,
        "QryGroup10" text NULL,
        "QryGroup11" text NULL,
        "QryGroup12" text NULL,
        "QryGroup13" text NULL,
        "QryGroup14" text NULL,
        "QryGroup15" text NULL,
        "QryGroup16" text NULL,
        "QryGroup17" text NULL,
        "QryGroup18" text NULL,
        "QryGroup19" text NULL,
        "QryGroup20" text NULL,
        "QryGroup21" text NULL,
        "QryGroup22" text NULL,
        "QryGroup23" text NULL,
        "QryGroup24" text NULL,
        "QryGroup25" text NULL,
        "QryGroup26" text NULL,
        "QryGroup27" text NULL,
        "QryGroup28" text NULL,
        "QryGroup29" text NULL,
        "QryGroup30" text NULL,
        "QryGroup31" text NULL,
        "QryGroup32" text NULL,
        "QryGroup33" text NULL,
        "QryGroup34" text NULL,
        "QryGroup35" text NULL,
        "QryGroup36" text NULL,
        "QryGroup37" text NULL,
        "QryGroup38" text NULL,
        "QryGroup39" text NULL,
        "QryGroup40" text NULL,
        "QryGroup41" text NULL,
        "QryGroup42" text NULL,
        "QryGroup43" text NULL,
        "QryGroup44" text NULL,
        "QryGroup45" text NULL,
        "QryGroup46" text NULL,
        "QryGroup47" text NULL,
        "QryGroup48" text NULL,
        "QryGroup49" text NULL,
        "QryGroup50" text NULL,
        "QryGroup51" text NULL,
        "QryGroup52" text NULL,
        "QryGroup53" text NULL,
        "QryGroup54" text NULL,
        "QryGroup55" text NULL,
        "QryGroup56" text NULL,
        "QryGroup57" text NULL,
        "QryGroup58" text NULL,
        "QryGroup59" text NULL,
        "QryGroup60" text NULL,
        "QryGroup61" text NULL,
        "QryGroup62" text NULL,
        "QryGroup63" text NULL,
        "QryGroup64" text NULL,
        "DdctOffice" text NULL,
        "CreateDate" timestamp without time zone NOT NULL,
        "UpdateDate" timestamp without time zone NOT NULL,
        "ExportCode" text NULL,
        "DscntObjct" smallint NOT NULL,
        "DscntRel" text NULL,
        "SPGCounter" smallint NOT NULL,
        "SPPCounter" integer NOT NULL,
        "DdctFileNo" text NULL,
        "SCNCounter" smallint NOT NULL,
        "MinIntrst" numeric NOT NULL,
        "DataSource" text NULL,
        "OprCount" integer NOT NULL,
        "ExemptNo" text NULL,
        "Priority" integer NOT NULL,
        "CreditCard" smallint NOT NULL,
        "CrCardNum" text NULL,
        "CardValid" timestamp without time zone NOT NULL,
        "UserSign" smallint NOT NULL,
        "LocMth" text NULL,
        "validFor" text NULL,
        "validFrom" timestamp without time zone NOT NULL,
        "validTo" timestamp without time zone NOT NULL,
        "frozenFor" text NULL,
        "frozenFrom" timestamp without time zone NOT NULL,
        "frozenTo" timestamp without time zone NOT NULL,
        "sEmployed" text NULL,
        "MTHCounter" integer NOT NULL,
        "BNKCounter" integer NOT NULL,
        "DdgKey" integer NOT NULL,
        "DdtKey" integer NOT NULL,
        "ValidComm" text NULL,
        "FrozenComm" text NULL,
        "chainStore" text NULL,
        "DiscInRet" text NULL,
        "State1" text NULL,
        "State2" text NULL,
        "VatGroup" text NULL,
        "LogInstanc" integer NOT NULL,
        "ObjType" text NULL,
        "Indicator" text NULL,
        "ShipType" smallint NOT NULL,
        "DebPayAcct" text NULL,
        "ShipToDef" text NULL,
        "Block" text NULL,
        "MailBlock" text NULL,
        "Password" text NULL,
        "ECVatGroup" text NULL,
        "Deleted" text NULL,
        "IBAN" text NULL,
        "DocEntry" integer NOT NULL,
        "FormCode" integer NOT NULL,
        "Box1099" text NULL,
        "PymCode" text NULL,
        "BackOrder" text NULL,
        "PartDelivr" text NULL,
        "DunnLevel" integer NOT NULL,
        "DunnDate" timestamp without time zone NOT NULL,
        "BlockDunn" text NULL,
        "BankCountr" text NULL,
        "CollecAuth" text NULL,
        "DME" text NULL,
        "InstrucKey" text NULL,
        "SinglePaym" text NULL,
        "ISRBillId" text NULL,
        "PaymBlock" text NULL,
        "RefDetails" text NULL,
        "HouseBank" text NULL,
        "OwnerIdNum" text NULL,
        "PyBlckDesc" integer NOT NULL,
        "HousBnkCry" text NULL,
        "HousBnkAct" text NULL,
        "HousBnkBrn" text NULL,
        "ProjectCod" text NULL,
        "SysMatchNo" integer NOT NULL,
        "VatIdUnCmp" text NULL,
        "AgentCode" text NULL,
        "TolrncDays" smallint NOT NULL,
        "SelfInvoic" text NULL,
        "DeferrTax" text NULL,
        "LetterNum" text NULL,
        "MaxAmount" numeric NOT NULL,
        "FromDate" timestamp without time zone NOT NULL,
        "ToDate" timestamp without time zone NOT NULL,
        "WTLiable" text NULL,
        "CrtfcateNO" text NULL,
        "ExpireDate" timestamp without time zone NOT NULL,
        "NINum" text NULL,
        "AccCritria" text NULL,
        "WTCode" text NULL,
        "Equ" text NULL,
        "HldCode" text NULL,
        "ConnBP" text NULL,
        "MltMthNum" integer NOT NULL,
        "TypWTReprt" text NULL,
        "VATRegNum" text NULL,
        "RepName" text NULL,
        "Industry" text NULL,
        "Business" text NULL,
        "WTTaxCat" text NULL,
        "IsDomestic" text NULL,
        "IsResident" text NULL,
        "AutoCalBCG" text NULL,
        "OtrCtlAcct" text NULL,
        "AliasName" text NULL,
        "Building" text NULL,
        "MailBuildi" text NULL,
        "BoEPrsnt" text NULL,
        "BoEDiscnt" text NULL,
        "BoEOnClct" text NULL,
        "UnpaidBoE" text NULL,
        "ITWTCode" text NULL,
        "DunTerm" text NULL,
        "ChannlBP" text NULL,
        "DfTcnician" integer NOT NULL,
        "Territory" integer NOT NULL,
        "BillToDef" text NULL,
        "DpmClear" text NULL,
        "IntrntSite" text NULL,
        "LangCode" integer NOT NULL,
        "HousActKey" integer NOT NULL,
        "Profession" text NULL,
        "CDPNum" smallint NOT NULL,
        "DflBankKey" integer NOT NULL,
        "BCACode" text NULL,
        "UseShpdGd" text NULL,
        "RegNum" text NULL,
        "VerifNum" text NULL,
        "BankCtlKey" text NULL,
        "HousCtlKey" text NULL,
        "AddrType" text NULL,
        "InsurOp347" text NULL,
        "MailAddrTy" text NULL,
        "StreetNo" text NULL,
        "MailStrNo" text NULL,
        "TaxRndRule" text NULL,
        "VendTID" integer NOT NULL,
        "ThreshOver" text NULL,
        "SurOver" text NULL,
        "VendorOcup" text NULL,
        "OpCode347" text NULL,
        "DpmIntAct" text NULL,
        "ResidenNum" text NULL,
        "UserSign2" smallint NOT NULL,
        "PlngGroup" text NULL,
        "VatIDNum" text NULL,
        "Affiliate" text NULL,
        "MivzExpSts" text NULL,
        "HierchDdct" text NULL,
        "CertWHT" text NULL,
        "CertBKeep" text NULL,
        "WHShaamGrp" text NULL,
        "IndustryC" integer NOT NULL,
        "DatevAcct" text NULL,
        "DatevFirst" text NULL,
        "GTSRegNum" text NULL,
        "GTSBankAct" text NULL,
        "GTSBilAddr" text NULL,
        "HsBnkSwift" text NULL,
        "HsBnkIBAN" text NULL,
        "DflSwift" text NULL,
        "AutoPost" text NULL,
        "IntrAcc" text NULL,
        "FeeAcc" text NULL,
        "CpnNo" integer NOT NULL,
        "NTSWebSite" smallint NOT NULL,
        "DflIBAN" text NULL,
        "Series" integer NOT NULL,
        "Number" numeric NOT NULL,
        "EDocExpFrm" integer NOT NULL,
        "TaxIdIdent" text NULL,
        "Attachment" text NULL,
        "AtcEntry" integer NOT NULL,
        "DiscRel" text NULL,
        "NoDiscount" text NULL,
        "SCAdjust" text NULL,
        "DflAgrmnt" integer NOT NULL,
        "GlblLocNum" text NULL,
        "SenderID" text NULL,
        "RcpntID" text NULL,
        "MainUsage" integer NOT NULL,
        "SefazCheck" text NULL,
        free312 text NULL,
        free313 text NULL,
        "DateFrom" timestamp without time zone NOT NULL,
        "DateTill" timestamp without time zone NOT NULL,
        "RelCode" text NULL,
        "OKATO" text NULL,
        "OKTMO" text NULL,
        "KBKCode" text NULL,
        "TypeOfOp" text NULL,
        "OwnerCode" integer NOT NULL,
        "MandateID" text NULL,
        "SignDate" timestamp without time zone NOT NULL,
        "Remark1" integer NOT NULL,
        "ConCerti" text NULL,
        "TpCusPres" integer NOT NULL,
        "RoleTypCod" text NULL,
        "BlockComm" text NULL,
        "EmplymntCt" text NULL,
        "ExcptnlEvt" text NULL,
        "ExpnPrfFnd" numeric NOT NULL,
        "EdrsFromBP" text NULL,
        "EdrsToBP" text NULL,
        "CreateTS" integer NOT NULL,
        "UpdateTS" integer NOT NULL,
        "EDocGenTyp" text NULL,
        "eStreet" text NULL,
        "eStreetNum" text NULL,
        "eBuildnNum" integer NOT NULL,
        "eZipCode" text NULL,
        "eCityTown" text NULL,
        "eCountry" text NULL,
        "eDistrict" text NULL,
        "RepFName" text NULL,
        "RepSName" text NULL,
        "RepCmpName" text NULL,
        "RepFisCode" text NULL,
        "RepAddID" text NULL,
        "PECAddr" text NULL,
        "IPACodePA" text NULL,
        "PriceMode" text NULL,
        "EffecPrice" text NULL,
        "TxExMxVdTp" text NULL,
        "MerchantID" text NULL,
        "UseBilAddr" text NULL,
        "NaturalPer" text NULL,
        "DPPStatus" text NULL,
        "EnAddID" text NULL,
        "EncryptIV" text NULL,
        "EnDflAccnt" text NULL,
        "EnDflIBAN" text NULL,
        "EnERD4In" text NULL,
        "EnERD4Out" text NULL,
        "DflCustomr" text NULL,
        "TspEntry" integer NOT NULL,
        "TspLine" integer NOT NULL,
        "FCERelevnt" text NULL,
        "FCEVldte" text NULL,
        "AggregDoc" text NULL,
        "EffcAllSrc" text NULL,
        "EBVatExCau" integer NOT NULL,
        "DataVers" integer NOT NULL,
        "LegalText" text NULL,
        "VatResDate" timestamp without time zone NOT NULL,
        "VatResCode" integer NOT NULL,
        "U_CXS_ACID" text NULL,
        "U_CXS_UCPR" text NULL,
        "U_CXS_ISRE" text NULL,
        "U_CXS_MDFD" text NULL,
        "U_BPCategoryCode" text NULL,
        "U_BOY_23_QCCS" text NULL,
        "U_BOY_23_ADPRTCD" text NULL,
        "U_POValidDuration" text NULL,
        "U_Freight" numeric NOT NULL,
        "U_OPEN" text NULL,
        "U_Close" text NULL,
        "U_FTA" text NULL,
        "U_License" text NULL,
        "U_CONTRACT" text NULL,
        "U_START" text NULL,
        "U_END" text NULL,
        "U_LOGISTICR" text NULL,
        "U_FINANCE" text NULL,
        "U_VENDORT" text NULL,
        "U_BuyerName" text NULL,
        "U_Rmark" text NULL,
        CONSTRAINT "PK_OCRD" PRIMARY KEY ("CardCode")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE "OCRG" (
        "GroupCode" integer NOT NULL,
        "GroupName" text NULL,
        "GroupType" text NULL,
        "Locked" text NULL,
        "DataSource" text NULL,
        "UserSign" integer NOT NULL,
        "PriceList" integer NOT NULL,
        "DiscRel" text NULL,
        "EffecPrice" text NULL,
        "U_CXS_MDFD" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OIGE" (
        "DocEntry" integer NOT NULL,
        "DocNum" integer NOT NULL,
        "DocType" text NULL,
        "CANCELED" text NULL,
        "Handwrtten" text NULL,
        "Printed" text NULL,
        "DocStatus" text NULL,
        "InvntSttus" text NULL,
        "Transfered" text NULL,
        "ObjType" text NULL,
        "DocDate" timestamp without time zone NULL,
        "DocDueDate" timestamp without time zone NULL,
        "CardCode" text NULL,
        "CardName" text NULL,
        "Address" text NULL,
        "NumAtCard" text NULL,
        "VatPercent" numeric NULL,
        "VatSum" numeric NULL,
        "VatSumFC" numeric NULL,
        "DiscPrcnt" numeric NULL,
        "DiscSum" numeric NULL,
        "DiscSumFC" numeric NULL,
        "DocCur" text NULL,
        "DocRate" numeric NULL,
        "DocTotal" numeric NULL,
        "DocTotalFC" numeric NULL,
        "PaidToDate" numeric NULL,
        "PaidFC" numeric NULL,
        "GrosProfit" numeric NULL,
        "GrosProfFC" numeric NULL,
        "Ref1" text NULL,
        "Ref2" text NULL,
        "Comments" text NULL,
        "JrnlMemo" text NULL,
        "TransId" integer NOT NULL,
        "ReceiptNum" integer NOT NULL,
        "GroupNum" integer NULL,
        "DocTime" integer NULL,
        "SlpCode" integer NOT NULL,
        "TrnspCode" integer NULL,
        "PartSupply" text NULL,
        "Confirmed" text NULL,
        "GrossBase" integer NULL,
        "ImportEnt" integer NOT NULL,
        "CreateTran" text NULL,
        "SummryType" text NULL,
        "UpdInvnt" text NULL,
        "UpdCardBal" text NULL,
        "Instance" integer NULL,
        "Flags" integer NOT NULL,
        "InvntDirec" text NULL,
        "CntctCode" integer NOT NULL,
        "ShowSCN" text NULL,
        "FatherCard" text NULL,
        "SysRate" numeric NULL,
        "CurSource" text NULL,
        "VatSumSy" numeric NULL,
        "DiscSumSy" numeric NULL,
        "DocTotalSy" numeric NULL,
        "PaidSys" numeric NULL,
        "FatherType" text NULL,
        "GrosProfSy" numeric NULL,
        "UpdateDate" timestamp without time zone NULL,
        "IsICT" text NULL,
        "CreateDate" timestamp without time zone NULL,
        "Volume" numeric NULL,
        "VolUnit" integer NULL,
        "Weight" numeric NULL,
        "WeightUnit" integer NULL,
        "Series" integer NOT NULL,
        "TaxDate" timestamp without time zone NULL,
        "Filler" text NULL,
        "DataSource" text NULL,
        "StampNum" text NULL,
        "isCrin" text NULL,
        "FinncPriod" integer NOT NULL,
        "UserSign" integer NULL,
        "selfInv" text NULL,
        "VatPaid" numeric NULL,
        "VatPaidFC" numeric NULL,
        "VatPaidSys" numeric NULL,
        "UserSign2" integer NULL,
        "WddStatus" text NULL,
        "draftKey" integer NOT NULL,
        "TotalExpns" numeric NULL,
        "TotalExpFC" numeric NULL,
        "TotalExpSC" numeric NULL,
        "DunnLevel" integer NOT NULL,
        "Address2" text NULL,
        "LogInstanc" integer NOT NULL,
        "Exported" text NULL,
        "StationID" integer NOT NULL,
        "Indicator" text NULL,
        "NetProc" text NULL,
        "AqcsTax" numeric NULL,
        "AqcsTaxFC" numeric NULL,
        "AqcsTaxSC" numeric NULL,
        "CashDiscPr" numeric NULL,
        "CashDiscnt" numeric NULL,
        "CashDiscFC" numeric NULL,
        "CashDiscSC" numeric NULL,
        "ShipToCode" text NULL,
        "LicTradNum" text NULL,
        "PaymentRef" text NULL,
        "WTSum" numeric NULL,
        "WTSumFC" numeric NULL,
        "WTSumSC" numeric NULL,
        "RoundDif" numeric NULL,
        "RoundDifFC" numeric NULL,
        "RoundDifSy" numeric NULL,
        "CheckDigit" text NULL,
        "Form1099" integer NOT NULL,
        "Box1099" text NULL,
        submitted text NULL,
        "PoPrss" text NULL,
        "Rounding" text NULL,
        "RevisionPo" text NULL,
        "Segment" integer NULL,
        "ReqDate" timestamp without time zone NULL,
        "CancelDate" timestamp without time zone NULL,
        "PickStatus" text NULL,
        "Pick" text NULL,
        "BlockDunn" text NULL,
        "PeyMethod" text NULL,
        "PayBlock" text NULL,
        "PayBlckRef" integer NOT NULL,
        "MaxDscn" text NULL,
        "Reserve" text NULL,
        "Max1099" numeric NULL,
        "CntrlBnk" text NULL,
        "PickRmrk" text NULL,
        "ISRCodLine" text NULL,
        "ExpAppl" numeric NULL,
        "ExpApplFC" numeric NULL,
        "ExpApplSC" numeric NULL,
        "Project" text NULL,
        "DeferrTax" text NULL,
        "LetterNum" text NULL,
        "FromDate" timestamp without time zone NULL,
        "ToDate" timestamp without time zone NULL,
        "WTApplied" numeric NULL,
        "WTAppliedF" numeric NULL,
        "BoeReserev" text NULL,
        "AgentCode" text NULL,
        "WTAppliedS" numeric NULL,
        "EquVatSum" numeric NULL,
        "EquVatSumF" numeric NULL,
        "EquVatSumS" numeric NULL,
        "Installmnt" integer NULL,
        "VATFirst" text NULL,
        "NnSbAmnt" numeric NULL,
        "NnSbAmntSC" numeric NULL,
        "NbSbAmntFC" numeric NULL,
        "ExepAmnt" numeric NULL,
        "ExepAmntSC" numeric NULL,
        "ExepAmntFC" numeric NULL,
        "VatDate" timestamp without time zone NULL,
        "CorrExt" text NULL,
        "CorrInv" integer NOT NULL,
        "NCorrInv" integer NOT NULL,
        "CEECFlag" text NULL,
        "BaseAmnt" numeric NULL,
        "BaseAmntSC" numeric NULL,
        "BaseAmntFC" numeric NULL,
        "CtlAccount" text NULL,
        "BPLId" integer NOT NULL,
        "BPLName" text NULL,
        "VATRegNum" text NULL,
        "TxInvRptNo" text NULL,
        "TxInvRptDt" timestamp without time zone NULL,
        "KVVATCode" text NULL,
        "WTDetails" text NULL,
        "SumAbsId" integer NOT NULL,
        "SumRptDate" timestamp without time zone NULL,
        "PIndicator" text NULL,
        "ManualNum" text NULL,
        "UseShpdGd" text NULL,
        "BaseVtAt" numeric NULL,
        "BaseVtAtSC" numeric NULL,
        "BaseVtAtFC" numeric NULL,
        "NnSbVAt" numeric NULL,
        "NnSbVAtSC" numeric NULL,
        "NbSbVAtFC" numeric NULL,
        "ExptVAt" numeric NULL,
        "ExptVAtSC" numeric NULL,
        "ExptVAtFC" numeric NULL,
        "LYPmtAt" numeric NULL,
        "LYPmtAtSC" numeric NULL,
        "LYPmtAtFC" numeric NULL,
        "ExpAnSum" numeric NULL,
        "ExpAnSys" numeric NULL,
        "ExpAnFrgn" numeric NULL,
        "DocSubType" text NULL,
        "DpmStatus" text NULL,
        "DpmAmnt" numeric NULL,
        "DpmAmntSC" numeric NULL,
        "DpmAmntFC" numeric NULL,
        "DpmDrawn" text NULL,
        "DpmPrcnt" numeric NULL,
        "PaidSum" numeric NULL,
        "PaidSumFc" numeric NULL,
        "PaidSumSc" numeric NULL,
        "FolioPref" text NULL,
        "FolioNum" integer NOT NULL,
        "DpmAppl" numeric NULL,
        "DpmApplFc" numeric NULL,
        "DpmApplSc" numeric NULL,
        "LPgFolioN" integer NOT NULL,
        "Header" text NULL,
        "Footer" text NULL,
        "Posted" text NULL,
        "OwnerCode" integer NOT NULL,
        "BPChCode" text NULL,
        "BPChCntc" integer NOT NULL,
        "PayToCode" text NULL,
        "IsPaytoBnk" text NULL,
        "BnkCntry" text NULL,
        "BankCode" text NULL,
        "BnkAccount" text NULL,
        "BnkBranch" text NULL,
        "isIns" text NULL,
        "TrackNo" text NULL,
        "VersionNum" text NULL,
        "LangCode" integer NOT NULL,
        "BPNameOW" text NULL,
        "BillToOW" text NULL,
        "ShipToOW" text NULL,
        "RetInvoice" text NULL,
        "ClsDate" timestamp without time zone NULL,
        "MInvNum" integer NOT NULL,
        "MInvDate" timestamp without time zone NULL,
        "SeqCode" integer NULL,
        "Serial" integer NOT NULL,
        "SeriesStr" text NULL,
        "SubStr" text NULL,
        "Model" text NULL,
        "TaxOnExp" numeric NULL,
        "TaxOnExpFc" numeric NULL,
        "TaxOnExpSc" numeric NULL,
        "TaxOnExAp" numeric NULL,
        "TaxOnExApF" numeric NULL,
        "TaxOnExApS" numeric NULL,
        "LastPmnTyp" text NULL,
        "LndCstNum" integer NOT NULL,
        "UseCorrVat" text NULL,
        "BlkCredMmo" text NULL,
        "OpenForLaC" text NULL,
        "Excised" text NULL,
        "ExcRefDate" timestamp without time zone NULL,
        "ExcRmvTime" text NULL,
        "SrvGpPrcnt" numeric NULL,
        "DepositNum" integer NOT NULL,
        "CertNum" text NULL,
        "DutyStatus" text NULL,
        "AutoCrtFlw" text NULL,
        "FlwRefDate" timestamp without time zone NULL,
        "FlwRefNum" text NULL,
        "VatJENum" integer NOT NULL,
        "DpmVat" numeric NULL,
        "DpmVatFc" numeric NULL,
        "DpmVatSc" numeric NULL,
        "DpmAppVat" numeric NULL,
        "DpmAppVatF" numeric NULL,
        "DpmAppVatS" numeric NULL,
        "InsurOp347" text NULL,
        "IgnRelDoc" text NULL,
        "BuildDesc" text NULL,
        "ResidenNum" text NULL,
        "Checker" integer NOT NULL,
        "Payee" integer NOT NULL,
        "CopyNumber" integer NOT NULL,
        "SSIExmpt" text NULL,
        "PQTGrpSer" integer NOT NULL,
        "PQTGrpNum" integer NOT NULL,
        "PQTGrpHW" text NULL,
        "ReopOriDoc" text NULL,
        "ReopManCls" text NULL,
        "DocManClsd" text NULL,
        "ClosingOpt" integer NULL,
        "SpecDate" timestamp without time zone NULL,
        "Ordered" text NULL,
        "NTSApprov" text NULL,
        "NTSWebSite" integer NULL,
        "NTSeTaxNo" text NULL,
        "NTSApprNo" text NULL,
        "PayDuMonth" text NULL,
        "ExtraMonth" integer NULL,
        "ExtraDays" integer NULL,
        "CdcOffset" integer NULL,
        "SignMsg" text NULL,
        "SignDigest" text NULL,
        "CertifNum" text NULL,
        "KeyVersion" integer NOT NULL,
        "EDocGenTyp" text NULL,
        "ESeries" integer NULL,
        "EDocNum" text NULL,
        "EDocExpFrm" integer NOT NULL,
        "OnlineQuo" text NULL,
        "POSEqNum" text NULL,
        "POSManufSN" text NULL,
        "POSCashN" integer NOT NULL,
        "EDocStatus" text NULL,
        "EDocCntnt" text NULL,
        "EDocProces" text NULL,
        "EDocErrCod" text NULL,
        "EDocErrMsg" text NULL,
        "EDocCancel" text NULL,
        "EDocTest" text NULL,
        "EDocPrefix" text NULL,
        "CUP" integer NOT NULL,
        "CIG" integer NOT NULL,
        "DpmAsDscnt" text NULL,
        "Attachment" text NULL,
        "AtcEntry" integer NOT NULL,
        "SupplCode" text NULL,
        "GTSRlvnt" text NULL,
        "BaseDisc" numeric NULL,
        "BaseDiscSc" numeric NULL,
        "BaseDiscFc" numeric NULL,
        "BaseDiscPr" numeric NULL,
        "CreateTS" integer NOT NULL,
        "UpdateTS" integer NOT NULL,
        "SrvTaxRule" text NULL,
        "AnnInvDecR" integer NOT NULL,
        "Supplier" text NULL,
        "Releaser" integer NOT NULL,
        "Receiver" integer NOT NULL,
        "ToWhsCode" text NULL,
        "AssetDate" timestamp without time zone NULL,
        "Requester" text NULL,
        "ReqName" text NULL,
        "Branch" integer NULL,
        "Department" integer NULL,
        "Email" text NULL,
        "Notify" text NULL,
        "ReqType" integer NOT NULL,
        "OriginType" text NULL,
        "IsReuseNum" text NULL,
        "IsReuseNFN" text NULL,
        "DocDlvry" text NULL,
        "PaidDpm" numeric NULL,
        "PaidDpmF" numeric NULL,
        "PaidDpmS" numeric NULL,
        "EnvTypeNFe" integer NOT NULL,
        "AgrNo" integer NOT NULL,
        "IsAlt" text NULL,
        "AltBaseTyp" integer NOT NULL,
        "AltBaseEnt" integer NOT NULL,
        "AuthCode" text NULL,
        "StDlvDate" timestamp without time zone NULL,
        "StDlvTime" integer NOT NULL,
        "EndDlvDate" timestamp without time zone NULL,
        "EndDlvTime" integer NOT NULL,
        "VclPlate" text NULL,
        "ElCoStatus" text NULL,
        "AtDocType" text NULL,
        "ElCoMsg" text NULL,
        "PrintSEPA" text NULL,
        "FreeChrg" numeric NULL,
        "FreeChrgFC" numeric NULL,
        "FreeChrgSC" numeric NULL,
        "NfeValue" numeric NULL,
        "FiscDocNum" text NULL,
        "RelatedTyp" integer NOT NULL,
        "RelatedEnt" integer NOT NULL,
        "CCDEntry" integer NOT NULL,
        "NfePrntFo" integer NOT NULL,
        "ZrdAbs" integer NOT NULL,
        "POSRcptNo" integer NOT NULL,
        "FoCTax" numeric NULL,
        "FoCTaxFC" numeric NULL,
        "FoCTaxSC" numeric NULL,
        "TpCusPres" integer NOT NULL,
        "ExcDocDate" timestamp without time zone NULL,
        "FoCFrght" numeric NULL,
        "FoCFrghtFC" numeric NULL,
        "FoCFrghtSC" numeric NULL,
        "InterimTyp" integer NULL,
        "PTICode" text NULL,
        "Letter" text NULL,
        "FolNumFrom" integer NOT NULL,
        "FolNumTo" integer NOT NULL,
        "FolSeries" integer NOT NULL,
        "SplitTax" numeric NULL,
        "SplitTaxFC" numeric NULL,
        "SplitTaxSC" numeric NULL,
        "ToBinCode" text NULL,
        "PriceMode" text NULL,
        "PoDropPrss" text NULL,
        "PermitNo" text NULL,
        "MYFtype" text NULL,
        "DocTaxID" text NULL,
        "DateReport" timestamp without time zone NULL,
        "RepSection" text NULL,
        "ExclTaxRep" text NULL,
        "PosCashReg" integer NOT NULL,
        "DmpTransID" text NULL,
        "ECommerBP" text NULL,
        "EComerGSTN" text NULL,
        "Revision" text NULL,
        "RevRefNo" text NULL,
        "RevRefDate" timestamp without time zone NULL,
        "RevCreRefN" text NULL,
        "RevCreRefD" timestamp without time zone NULL,
        "TaxInvNo" text NULL,
        "FrmBpDate" timestamp without time zone NULL,
        "GSTTranTyp" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "ComTrade" text NULL,
        "UseBilAddr" text NULL,
        "IssReason" integer NULL,
        "ComTradeRt" text NULL,
        "SplitPmnt" text NULL,
        "SOIWizId" integer NOT NULL,
        "SelfPosted" text NULL,
        "EnBnkAcct" text NULL,
        "EncryptIV" text NULL,
        "DPPStatus" text NULL,
        "SAPPassprt" text NULL,
        "EWBGenType" text NULL,
        "CtActTax" numeric NULL,
        "CtActTaxFC" numeric NULL,
        "CtActTaxSC" numeric NULL,
        "EDocType" text NULL,
        "QRCodeSrc" text NULL,
        "AggregDoc" text NULL,
        "DataVers" integer NOT NULL,
        "ShipState" text NULL,
        "ShipPlace" text NULL,
        "CustOffice" text NULL,
        "FCI" text NULL,
        "NnSbCuAmnt" numeric NULL,
        "NnSbCuSC" numeric NULL,
        "NnSbCuFC" numeric NULL,
        "ExepCuAmnt" numeric NULL,
        "ExepCuSC" numeric NULL,
        "ExepCuFC" numeric NULL,
        "AddLegIn" text NULL,
        "LegTextF" integer NOT NULL,
        "IndFinal" text NULL,
        "DANFELgTxt" text NULL,
        "U_CXS_TRKY" text NULL,
        "U_CXS_TRID" text NULL,
        "U_CXS_FRST" text NULL,
        "U_CXS_FOST" text NULL,
        "U_CXS_STID" text NULL,
        "U_CXS_ACID" text NULL,
        "U_CXS_LYNO" text NULL,
        "U_CXS_LYAY" text NULL,
        "U_CXS_IASO" text NULL,
        "U_CXS_FRIV" text NULL,
        "U_CXS_SNGL" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_CXS_BREF" text NULL,
        "U_CXS_SLEX" text NULL,
        "U_CXS_STSN" text NULL,
        "U_CXS_TST2" text NULL,
        "U_CXS_FMST" text NULL,
        "U_CXS_TOST" text NULL,
        "U_CXS_STRT" text NULL,
        "U_TransType" text NULL,
        "U_CXS_STAS" text NULL,
        "U_CXS_MDFD" text NULL,
        "U_VandorExchange" text NULL,
        "U_Freight" numeric NULL,
        CONSTRAINT "PK_OIGE" PRIMARY KEY ("DocEntry")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OIGN" (
        "DocEntry" integer NOT NULL,
        "DocNum" integer NOT NULL,
        "DocType" text NULL,
        "CANCELED" text NULL,
        "Handwrtten" text NULL,
        "Printed" text NULL,
        "DocStatus" text NULL,
        "InvntSttus" text NULL,
        "Transfered" text NULL,
        "ObjType" text NULL,
        "DocDate" timestamp without time zone NULL,
        "DocDueDate" timestamp without time zone NULL,
        "CardCode" text NULL,
        "CardName" text NULL,
        "Address" text NULL,
        "NumAtCard" text NULL,
        "VatPercent" numeric NULL,
        "VatSum" numeric NULL,
        "VatSumFC" numeric NULL,
        "DiscPrcnt" numeric NULL,
        "DiscSum" numeric NULL,
        "DiscSumFC" numeric NULL,
        "DocCur" text NULL,
        "DocRate" numeric NULL,
        "DocTotal" numeric NULL,
        "DocTotalFC" numeric NULL,
        "PaidToDate" numeric NULL,
        "PaidFC" numeric NULL,
        "GrosProfit" numeric NULL,
        "GrosProfFC" numeric NULL,
        "Ref1" text NULL,
        "Ref2" text NULL,
        "Comments" text NULL,
        "JrnlMemo" text NULL,
        "TransId" integer NOT NULL,
        "ReceiptNum" integer NOT NULL,
        "GroupNum" integer NULL,
        "DocTime" integer NULL,
        "SlpCode" integer NOT NULL,
        "TrnspCode" integer NULL,
        "PartSupply" text NULL,
        "Confirmed" text NULL,
        "GrossBase" integer NULL,
        "ImportEnt" integer NOT NULL,
        "CreateTran" text NULL,
        "SummryType" text NULL,
        "UpdInvnt" text NULL,
        "UpdCardBal" text NULL,
        "Instance" integer NULL,
        "Flags" integer NOT NULL,
        "InvntDirec" text NULL,
        "CntctCode" integer NOT NULL,
        "ShowSCN" text NULL,
        "FatherCard" text NULL,
        "SysRate" numeric NULL,
        "CurSource" text NULL,
        "VatSumSy" numeric NULL,
        "DiscSumSy" numeric NULL,
        "DocTotalSy" numeric NULL,
        "PaidSys" numeric NULL,
        "FatherType" text NULL,
        "GrosProfSy" numeric NULL,
        "UpdateDate" timestamp without time zone NULL,
        "IsICT" text NULL,
        "CreateDate" timestamp without time zone NULL,
        "Volume" numeric NULL,
        "VolUnit" integer NULL,
        "Weight" numeric NULL,
        "WeightUnit" integer NULL,
        "Series" integer NOT NULL,
        "TaxDate" timestamp without time zone NULL,
        "Filler" text NULL,
        "DataSource" text NULL,
        "StampNum" text NULL,
        "isCrin" text NULL,
        "FinncPriod" integer NOT NULL,
        "UserSign" integer NULL,
        "selfInv" text NULL,
        "VatPaid" numeric NULL,
        "VatPaidFC" numeric NULL,
        "VatPaidSys" numeric NULL,
        "UserSign2" integer NULL,
        "WddStatus" text NULL,
        "draftKey" integer NOT NULL,
        "TotalExpns" numeric NULL,
        "TotalExpFC" numeric NULL,
        "TotalExpSC" numeric NULL,
        "DunnLevel" integer NOT NULL,
        "Address2" text NULL,
        "LogInstanc" integer NOT NULL,
        "Exported" text NULL,
        "StationID" integer NOT NULL,
        "Indicator" text NULL,
        "NetProc" text NULL,
        "AqcsTax" numeric NULL,
        "AqcsTaxFC" numeric NULL,
        "AqcsTaxSC" numeric NULL,
        "CashDiscPr" numeric NULL,
        "CashDiscnt" numeric NULL,
        "CashDiscFC" numeric NULL,
        "CashDiscSC" numeric NULL,
        "ShipToCode" text NULL,
        "LicTradNum" text NULL,
        "PaymentRef" text NULL,
        "WTSum" numeric NULL,
        "WTSumFC" numeric NULL,
        "WTSumSC" numeric NULL,
        "RoundDif" numeric NULL,
        "RoundDifFC" numeric NULL,
        "RoundDifSy" numeric NULL,
        "CheckDigit" text NULL,
        "Form1099" integer NOT NULL,
        "Box1099" text NULL,
        submitted text NULL,
        "PoPrss" text NULL,
        "Rounding" text NULL,
        "RevisionPo" text NULL,
        "Segment" integer NULL,
        "ReqDate" timestamp without time zone NULL,
        "CancelDate" timestamp without time zone NULL,
        "PickStatus" text NULL,
        "Pick" text NULL,
        "BlockDunn" text NULL,
        "PeyMethod" text NULL,
        "PayBlock" text NULL,
        "PayBlckRef" integer NOT NULL,
        "MaxDscn" text NULL,
        "Reserve" text NULL,
        "Max1099" numeric NULL,
        "CntrlBnk" text NULL,
        "PickRmrk" text NULL,
        "ISRCodLine" text NULL,
        "ExpAppl" numeric NULL,
        "ExpApplFC" numeric NULL,
        "ExpApplSC" numeric NULL,
        "Project" text NULL,
        "DeferrTax" text NULL,
        "LetterNum" text NULL,
        "FromDate" timestamp without time zone NULL,
        "ToDate" timestamp without time zone NULL,
        "WTApplied" numeric NULL,
        "WTAppliedF" numeric NULL,
        "BoeReserev" text NULL,
        "AgentCode" text NULL,
        "WTAppliedS" numeric NULL,
        "EquVatSum" numeric NULL,
        "EquVatSumF" numeric NULL,
        "EquVatSumS" numeric NULL,
        "Installmnt" integer NULL,
        "VATFirst" text NULL,
        "NnSbAmnt" numeric NULL,
        "NnSbAmntSC" numeric NULL,
        "NbSbAmntFC" numeric NULL,
        "ExepAmnt" numeric NULL,
        "ExepAmntSC" numeric NULL,
        "ExepAmntFC" numeric NULL,
        "VatDate" timestamp without time zone NULL,
        "CorrExt" text NULL,
        "CorrInv" integer NOT NULL,
        "NCorrInv" integer NOT NULL,
        "CEECFlag" text NULL,
        "BaseAmnt" numeric NULL,
        "BaseAmntSC" numeric NULL,
        "BaseAmntFC" numeric NULL,
        "CtlAccount" text NULL,
        "BPLId" integer NOT NULL,
        "BPLName" text NULL,
        "VATRegNum" text NULL,
        "TxInvRptNo" text NULL,
        "TxInvRptDt" timestamp without time zone NULL,
        "KVVATCode" text NULL,
        "WTDetails" text NULL,
        "SumAbsId" integer NOT NULL,
        "SumRptDate" timestamp without time zone NULL,
        "PIndicator" text NULL,
        "ManualNum" text NULL,
        "UseShpdGd" text NULL,
        "BaseVtAt" numeric NULL,
        "BaseVtAtSC" numeric NULL,
        "BaseVtAtFC" numeric NULL,
        "NnSbVAt" numeric NULL,
        "NnSbVAtSC" numeric NULL,
        "NbSbVAtFC" numeric NULL,
        "ExptVAt" numeric NULL,
        "ExptVAtSC" numeric NULL,
        "ExptVAtFC" numeric NULL,
        "LYPmtAt" numeric NULL,
        "LYPmtAtSC" numeric NULL,
        "LYPmtAtFC" numeric NULL,
        "ExpAnSum" numeric NULL,
        "ExpAnSys" numeric NULL,
        "ExpAnFrgn" numeric NULL,
        "DocSubType" text NULL,
        "DpmStatus" text NULL,
        "DpmAmnt" numeric NULL,
        "DpmAmntSC" numeric NULL,
        "DpmAmntFC" numeric NULL,
        "DpmDrawn" text NULL,
        "DpmPrcnt" numeric NULL,
        "PaidSum" numeric NULL,
        "PaidSumFc" numeric NULL,
        "PaidSumSc" numeric NULL,
        "FolioPref" text NULL,
        "FolioNum" integer NOT NULL,
        "DpmAppl" numeric NULL,
        "DpmApplFc" numeric NULL,
        "DpmApplSc" numeric NULL,
        "LPgFolioN" integer NOT NULL,
        "Header" text NULL,
        "Footer" text NULL,
        "Posted" text NULL,
        "OwnerCode" integer NOT NULL,
        "BPChCode" text NULL,
        "BPChCntc" integer NOT NULL,
        "PayToCode" text NULL,
        "IsPaytoBnk" text NULL,
        "BnkCntry" text NULL,
        "BankCode" text NULL,
        "BnkAccount" text NULL,
        "BnkBranch" text NULL,
        "isIns" text NULL,
        "TrackNo" text NULL,
        "VersionNum" text NULL,
        "LangCode" integer NOT NULL,
        "BPNameOW" text NULL,
        "BillToOW" text NULL,
        "ShipToOW" text NULL,
        "RetInvoice" text NULL,
        "ClsDate" timestamp without time zone NULL,
        "MInvNum" integer NOT NULL,
        "MInvDate" timestamp without time zone NULL,
        "SeqCode" integer NULL,
        "Serial" integer NOT NULL,
        "SeriesStr" text NULL,
        "SubStr" text NULL,
        "Model" text NULL,
        "TaxOnExp" numeric NULL,
        "TaxOnExpFc" numeric NULL,
        "TaxOnExpSc" numeric NULL,
        "TaxOnExAp" numeric NULL,
        "TaxOnExApF" numeric NULL,
        "TaxOnExApS" numeric NULL,
        "LastPmnTyp" text NULL,
        "LndCstNum" integer NOT NULL,
        "UseCorrVat" text NULL,
        "BlkCredMmo" text NULL,
        "OpenForLaC" text NULL,
        "Excised" text NULL,
        "ExcRefDate" timestamp without time zone NULL,
        "ExcRmvTime" text NULL,
        "SrvGpPrcnt" numeric NULL,
        "DepositNum" integer NOT NULL,
        "CertNum" text NULL,
        "DutyStatus" text NULL,
        "AutoCrtFlw" text NULL,
        "FlwRefDate" timestamp without time zone NULL,
        "FlwRefNum" text NULL,
        "VatJENum" integer NOT NULL,
        "DpmVat" numeric NULL,
        "DpmVatFc" numeric NULL,
        "DpmVatSc" numeric NULL,
        "DpmAppVat" numeric NULL,
        "DpmAppVatF" numeric NULL,
        "DpmAppVatS" numeric NULL,
        "InsurOp347" text NULL,
        "IgnRelDoc" text NULL,
        "BuildDesc" text NULL,
        "ResidenNum" text NULL,
        "Checker" integer NOT NULL,
        "Payee" integer NOT NULL,
        "CopyNumber" integer NOT NULL,
        "SSIExmpt" text NULL,
        "PQTGrpSer" integer NOT NULL,
        "PQTGrpNum" integer NOT NULL,
        "PQTGrpHW" text NULL,
        "ReopOriDoc" text NULL,
        "ReopManCls" text NULL,
        "DocManClsd" text NULL,
        "ClosingOpt" integer NULL,
        "SpecDate" timestamp without time zone NULL,
        "Ordered" text NULL,
        "NTSApprov" text NULL,
        "NTSWebSite" integer NULL,
        "NTSeTaxNo" text NULL,
        "NTSApprNo" text NULL,
        "PayDuMonth" text NULL,
        "ExtraMonth" integer NULL,
        "ExtraDays" integer NULL,
        "CdcOffset" integer NULL,
        "SignMsg" text NULL,
        "SignDigest" text NULL,
        "CertifNum" text NULL,
        "KeyVersion" integer NOT NULL,
        "EDocGenTyp" text NULL,
        "ESeries" integer NULL,
        "EDocNum" text NULL,
        "EDocExpFrm" integer NOT NULL,
        "OnlineQuo" text NULL,
        "POSEqNum" text NULL,
        "POSManufSN" text NULL,
        "POSCashN" integer NOT NULL,
        "EDocStatus" text NULL,
        "EDocCntnt" text NULL,
        "EDocProces" text NULL,
        "EDocErrCod" text NULL,
        "EDocErrMsg" text NULL,
        "EDocCancel" text NULL,
        "EDocTest" text NULL,
        "EDocPrefix" text NULL,
        "CUP" integer NOT NULL,
        "CIG" integer NOT NULL,
        "DpmAsDscnt" text NULL,
        "Attachment" text NULL,
        "AtcEntry" integer NOT NULL,
        "SupplCode" text NULL,
        "GTSRlvnt" text NULL,
        "BaseDisc" numeric NULL,
        "BaseDiscSc" numeric NULL,
        "BaseDiscFc" numeric NULL,
        "BaseDiscPr" numeric NULL,
        "CreateTS" integer NOT NULL,
        "UpdateTS" integer NOT NULL,
        "SrvTaxRule" text NULL,
        "AnnInvDecR" integer NOT NULL,
        "Supplier" text NULL,
        "Releaser" integer NOT NULL,
        "Receiver" integer NOT NULL,
        "ToWhsCode" text NULL,
        "AssetDate" timestamp without time zone NULL,
        "Requester" text NULL,
        "ReqName" text NULL,
        "Branch" integer NULL,
        "Department" integer NULL,
        "Email" text NULL,
        "Notify" text NULL,
        "ReqType" integer NOT NULL,
        "OriginType" text NULL,
        "IsReuseNum" text NULL,
        "IsReuseNFN" text NULL,
        "DocDlvry" text NULL,
        "PaidDpm" numeric NULL,
        "PaidDpmF" numeric NULL,
        "PaidDpmS" numeric NULL,
        "EnvTypeNFe" integer NOT NULL,
        "AgrNo" integer NOT NULL,
        "IsAlt" text NULL,
        "AltBaseTyp" integer NOT NULL,
        "AltBaseEnt" integer NOT NULL,
        "AuthCode" text NULL,
        "StDlvDate" timestamp without time zone NULL,
        "StDlvTime" integer NOT NULL,
        "EndDlvDate" timestamp without time zone NULL,
        "EndDlvTime" integer NOT NULL,
        "VclPlate" text NULL,
        "ElCoStatus" text NULL,
        "AtDocType" text NULL,
        "ElCoMsg" text NULL,
        "PrintSEPA" text NULL,
        "FreeChrg" numeric NULL,
        "FreeChrgFC" numeric NULL,
        "FreeChrgSC" numeric NULL,
        "NfeValue" numeric NULL,
        "FiscDocNum" text NULL,
        "RelatedTyp" integer NOT NULL,
        "RelatedEnt" integer NOT NULL,
        "CCDEntry" integer NOT NULL,
        "NfePrntFo" integer NOT NULL,
        "ZrdAbs" integer NOT NULL,
        "POSRcptNo" integer NOT NULL,
        "FoCTax" numeric NULL,
        "FoCTaxFC" numeric NULL,
        "FoCTaxSC" numeric NULL,
        "TpCusPres" integer NOT NULL,
        "ExcDocDate" timestamp without time zone NULL,
        "FoCFrght" numeric NULL,
        "FoCFrghtFC" numeric NULL,
        "FoCFrghtSC" numeric NULL,
        "InterimTyp" integer NULL,
        "PTICode" text NULL,
        "Letter" text NULL,
        "FolNumFrom" integer NOT NULL,
        "FolNumTo" integer NOT NULL,
        "FolSeries" integer NOT NULL,
        "SplitTax" numeric NULL,
        "SplitTaxFC" numeric NULL,
        "SplitTaxSC" numeric NULL,
        "ToBinCode" text NULL,
        "PriceMode" text NULL,
        "PoDropPrss" text NULL,
        "PermitNo" text NULL,
        "MYFtype" text NULL,
        "DocTaxID" text NULL,
        "DateReport" timestamp without time zone NULL,
        "RepSection" text NULL,
        "ExclTaxRep" text NULL,
        "PosCashReg" integer NOT NULL,
        "DmpTransID" text NULL,
        "ECommerBP" text NULL,
        "EComerGSTN" text NULL,
        "Revision" text NULL,
        "RevRefNo" text NULL,
        "RevRefDate" timestamp without time zone NULL,
        "RevCreRefN" text NULL,
        "RevCreRefD" timestamp without time zone NULL,
        "TaxInvNo" text NULL,
        "FrmBpDate" timestamp without time zone NULL,
        "GSTTranTyp" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "ComTrade" text NULL,
        "UseBilAddr" text NULL,
        "IssReason" integer NULL,
        "ComTradeRt" text NULL,
        "SplitPmnt" text NULL,
        "SOIWizId" integer NOT NULL,
        "SelfPosted" text NULL,
        "EnBnkAcct" text NULL,
        "EncryptIV" text NULL,
        "DPPStatus" text NULL,
        "SAPPassprt" text NULL,
        "EWBGenType" text NULL,
        "CtActTax" numeric NULL,
        "CtActTaxFC" numeric NULL,
        "CtActTaxSC" numeric NULL,
        "EDocType" text NULL,
        "QRCodeSrc" text NULL,
        "AggregDoc" text NULL,
        "DataVers" integer NOT NULL,
        "ShipState" text NULL,
        "ShipPlace" text NULL,
        "CustOffice" text NULL,
        "FCI" text NULL,
        "NnSbCuAmnt" numeric NULL,
        "NnSbCuSC" numeric NULL,
        "NnSbCuFC" numeric NULL,
        "ExepCuAmnt" numeric NULL,
        "ExepCuSC" numeric NULL,
        "ExepCuFC" numeric NULL,
        "AddLegIn" text NULL,
        "LegTextF" integer NOT NULL,
        "IndFinal" text NULL,
        "DANFELgTxt" text NULL,
        "U_CXS_TRKY" text NULL,
        "U_CXS_TRID" text NULL,
        "U_CXS_FRST" text NULL,
        "U_CXS_FOST" text NULL,
        "U_CXS_STID" text NULL,
        "U_CXS_ACID" text NULL,
        "U_CXS_LYNO" text NULL,
        "U_CXS_LYAY" text NULL,
        "U_CXS_IASO" text NULL,
        "U_CXS_FRIV" text NULL,
        "U_CXS_SNGL" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_CXS_BREF" text NULL,
        "U_CXS_SLEX" text NULL,
        "U_CXS_STSN" text NULL,
        "U_CXS_TST2" text NULL,
        "U_CXS_FMST" text NULL,
        "U_CXS_TOST" text NULL,
        "U_CXS_STRT" text NULL,
        "U_TransType" text NULL,
        "U_CXS_STAS" text NULL,
        "U_CXS_MDFD" text NULL,
        "U_VandorExchange" text NULL,
        "U_Freight" numeric NULL,
        CONSTRAINT "PK_OIGN" PRIMARY KEY ("DocEntry")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OINV" (
        "DocEntry" integer NOT NULL,
        "DocNum" integer NOT NULL,
        "DocType" text NULL,
        "CANCELED" text NULL,
        "Handwrtten" text NULL,
        "Printed" text NULL,
        "DocStatus" text NULL,
        "InvntSttus" text NULL,
        "Transfered" text NULL,
        "ObjType" text NULL,
        "DocDate" timestamp without time zone NULL,
        "DocDueDate" timestamp without time zone NULL,
        "CardCode" text NULL,
        "CardName" text NULL,
        "Address" text NULL,
        "NumAtCard" text NULL,
        "VatPercent" numeric NULL,
        "VatSum" numeric NULL,
        "VatSumFC" numeric NULL,
        "DiscPrcnt" numeric NULL,
        "DiscSum" numeric NULL,
        "DiscSumFC" numeric NULL,
        "DocCur" text NULL,
        "DocRate" numeric NULL,
        "DocTotal" numeric NULL,
        "DocTotalFC" numeric NULL,
        "PaidToDate" numeric NULL,
        "PaidFC" numeric NULL,
        "GrosProfit" numeric NULL,
        "GrosProfFC" numeric NULL,
        "Ref1" text NULL,
        "Ref2" text NULL,
        "Comments" text NULL,
        "JrnlMemo" text NULL,
        "TransId" integer NOT NULL,
        "ReceiptNum" integer NOT NULL,
        "GroupNum" integer NULL,
        "DocTime" integer NULL,
        "SlpCode" integer NOT NULL,
        "TrnspCode" integer NULL,
        "PartSupply" text NULL,
        "Confirmed" text NULL,
        "GrossBase" integer NULL,
        "ImportEnt" integer NOT NULL,
        "CreateTran" text NULL,
        "SummryType" text NULL,
        "UpdInvnt" text NULL,
        "UpdCardBal" text NULL,
        "Instance" integer NULL,
        "Flags" integer NOT NULL,
        "InvntDirec" text NULL,
        "CntctCode" integer NOT NULL,
        "ShowSCN" text NULL,
        "FatherCard" text NULL,
        "SysRate" numeric NULL,
        "CurSource" text NULL,
        "VatSumSy" numeric NULL,
        "DiscSumSy" numeric NULL,
        "DocTotalSy" numeric NULL,
        "PaidSys" numeric NULL,
        "FatherType" text NULL,
        "GrosProfSy" numeric NULL,
        "UpdateDate" timestamp without time zone NULL,
        "IsICT" text NULL,
        "CreateDate" timestamp without time zone NULL,
        "Volume" numeric NULL,
        "VolUnit" integer NULL,
        "Weight" numeric NULL,
        "WeightUnit" integer NULL,
        "Series" integer NOT NULL,
        "TaxDate" timestamp without time zone NULL,
        "Filler" text NULL,
        "DataSource" text NULL,
        "StampNum" text NULL,
        "isCrin" text NULL,
        "FinncPriod" integer NOT NULL,
        "UserSign" integer NULL,
        "selfInv" text NULL,
        "VatPaid" numeric NULL,
        "VatPaidFC" numeric NULL,
        "VatPaidSys" numeric NULL,
        "UserSign2" integer NULL,
        "WddStatus" text NULL,
        "draftKey" integer NOT NULL,
        "TotalExpns" numeric NULL,
        "TotalExpFC" numeric NULL,
        "TotalExpSC" numeric NULL,
        "DunnLevel" integer NOT NULL,
        "Address2" text NULL,
        "LogInstanc" integer NOT NULL,
        "Exported" text NULL,
        "StationID" integer NOT NULL,
        "Indicator" text NULL,
        "NetProc" text NULL,
        "AqcsTax" numeric NULL,
        "AqcsTaxFC" numeric NULL,
        "AqcsTaxSC" numeric NULL,
        "CashDiscPr" numeric NULL,
        "CashDiscnt" numeric NULL,
        "CashDiscFC" numeric NULL,
        "CashDiscSC" numeric NULL,
        "ShipToCode" text NULL,
        "LicTradNum" text NULL,
        "PaymentRef" text NULL,
        "WTSum" numeric NULL,
        "WTSumFC" numeric NULL,
        "WTSumSC" numeric NULL,
        "RoundDif" numeric NULL,
        "RoundDifFC" numeric NULL,
        "RoundDifSy" numeric NULL,
        "CheckDigit" text NULL,
        "Form1099" integer NOT NULL,
        "Box1099" text NULL,
        submitted text NULL,
        "PoPrss" text NULL,
        "Rounding" text NULL,
        "RevisionPo" text NULL,
        "Segment" integer NULL,
        "ReqDate" timestamp without time zone NULL,
        "CancelDate" timestamp without time zone NULL,
        "PickStatus" text NULL,
        "Pick" text NULL,
        "BlockDunn" text NULL,
        "PeyMethod" text NULL,
        "PayBlock" text NULL,
        "PayBlckRef" integer NOT NULL,
        "MaxDscn" text NULL,
        "Reserve" text NULL,
        "Max1099" numeric NULL,
        "CntrlBnk" text NULL,
        "PickRmrk" text NULL,
        "ISRCodLine" text NULL,
        "ExpAppl" numeric NULL,
        "ExpApplFC" numeric NULL,
        "ExpApplSC" numeric NULL,
        "Project" text NULL,
        "DeferrTax" text NULL,
        "LetterNum" text NULL,
        "FromDate" timestamp without time zone NULL,
        "ToDate" timestamp without time zone NULL,
        "WTApplied" numeric NULL,
        "WTAppliedF" numeric NULL,
        "BoeReserev" text NULL,
        "AgentCode" text NULL,
        "WTAppliedS" numeric NULL,
        "EquVatSum" numeric NULL,
        "EquVatSumF" numeric NULL,
        "EquVatSumS" numeric NULL,
        "Installmnt" integer NULL,
        "VATFirst" text NULL,
        "NnSbAmnt" numeric NULL,
        "NnSbAmntSC" numeric NULL,
        "NbSbAmntFC" numeric NULL,
        "ExepAmnt" numeric NULL,
        "ExepAmntSC" numeric NULL,
        "ExepAmntFC" numeric NULL,
        "VatDate" timestamp without time zone NULL,
        "CorrExt" text NULL,
        "CorrInv" integer NOT NULL,
        "NCorrInv" integer NOT NULL,
        "CEECFlag" text NULL,
        "BaseAmnt" numeric NULL,
        "BaseAmntSC" numeric NULL,
        "BaseAmntFC" numeric NULL,
        "CtlAccount" text NULL,
        "BPLId" integer NOT NULL,
        "BPLName" text NULL,
        "VATRegNum" text NULL,
        "TxInvRptNo" text NULL,
        "TxInvRptDt" timestamp without time zone NULL,
        "KVVATCode" text NULL,
        "WTDetails" text NULL,
        "SumAbsId" integer NOT NULL,
        "SumRptDate" timestamp without time zone NULL,
        "PIndicator" text NULL,
        "ManualNum" text NULL,
        "UseShpdGd" text NULL,
        "BaseVtAt" numeric NULL,
        "BaseVtAtSC" numeric NULL,
        "BaseVtAtFC" numeric NULL,
        "NnSbVAt" numeric NULL,
        "NnSbVAtSC" numeric NULL,
        "NbSbVAtFC" numeric NULL,
        "ExptVAt" numeric NULL,
        "ExptVAtSC" numeric NULL,
        "ExptVAtFC" numeric NULL,
        "LYPmtAt" numeric NULL,
        "LYPmtAtSC" numeric NULL,
        "LYPmtAtFC" numeric NULL,
        "ExpAnSum" numeric NULL,
        "ExpAnSys" numeric NULL,
        "ExpAnFrgn" numeric NULL,
        "DocSubType" text NULL,
        "DpmStatus" text NULL,
        "DpmAmnt" numeric NULL,
        "DpmAmntSC" numeric NULL,
        "DpmAmntFC" numeric NULL,
        "DpmDrawn" text NULL,
        "DpmPrcnt" numeric NULL,
        "PaidSum" numeric NULL,
        "PaidSumFc" numeric NULL,
        "PaidSumSc" numeric NULL,
        "FolioPref" text NULL,
        "FolioNum" integer NOT NULL,
        "DpmAppl" numeric NULL,
        "DpmApplFc" numeric NULL,
        "DpmApplSc" numeric NULL,
        "LPgFolioN" integer NOT NULL,
        "Header" text NULL,
        "Footer" text NULL,
        "Posted" text NULL,
        "OwnerCode" integer NOT NULL,
        "BPChCode" text NULL,
        "BPChCntc" integer NOT NULL,
        "PayToCode" text NULL,
        "IsPaytoBnk" text NULL,
        "BnkCntry" text NULL,
        "BankCode" text NULL,
        "BnkAccount" text NULL,
        "BnkBranch" text NULL,
        "isIns" text NULL,
        "TrackNo" text NULL,
        "VersionNum" text NULL,
        "LangCode" integer NOT NULL,
        "BPNameOW" text NULL,
        "BillToOW" text NULL,
        "ShipToOW" text NULL,
        "RetInvoice" text NULL,
        "ClsDate" timestamp without time zone NULL,
        "MInvNum" integer NOT NULL,
        "MInvDate" timestamp without time zone NULL,
        "SeqCode" integer NULL,
        "Serial" integer NOT NULL,
        "SeriesStr" text NULL,
        "SubStr" text NULL,
        "Model" text NULL,
        "TaxOnExp" numeric NULL,
        "TaxOnExpFc" numeric NULL,
        "TaxOnExpSc" numeric NULL,
        "TaxOnExAp" numeric NULL,
        "TaxOnExApF" numeric NULL,
        "TaxOnExApS" numeric NULL,
        "LastPmnTyp" text NULL,
        "LndCstNum" integer NOT NULL,
        "UseCorrVat" text NULL,
        "BlkCredMmo" text NULL,
        "OpenForLaC" text NULL,
        "Excised" text NULL,
        "ExcRefDate" timestamp without time zone NULL,
        "ExcRmvTime" text NULL,
        "SrvGpPrcnt" numeric NULL,
        "DepositNum" integer NOT NULL,
        "CertNum" text NULL,
        "DutyStatus" text NULL,
        "AutoCrtFlw" text NULL,
        "FlwRefDate" timestamp without time zone NULL,
        "FlwRefNum" text NULL,
        "VatJENum" integer NOT NULL,
        "DpmVat" numeric NULL,
        "DpmVatFc" numeric NULL,
        "DpmVatSc" numeric NULL,
        "DpmAppVat" numeric NULL,
        "DpmAppVatF" numeric NULL,
        "DpmAppVatS" numeric NULL,
        "InsurOp347" text NULL,
        "IgnRelDoc" text NULL,
        "BuildDesc" text NULL,
        "ResidenNum" text NULL,
        "Checker" integer NOT NULL,
        "Payee" integer NOT NULL,
        "CopyNumber" integer NOT NULL,
        "SSIExmpt" text NULL,
        "PQTGrpSer" integer NOT NULL,
        "PQTGrpNum" integer NOT NULL,
        "PQTGrpHW" text NULL,
        "ReopOriDoc" text NULL,
        "ReopManCls" text NULL,
        "DocManClsd" text NULL,
        "ClosingOpt" integer NULL,
        "SpecDate" timestamp without time zone NULL,
        "Ordered" text NULL,
        "NTSApprov" text NULL,
        "NTSWebSite" integer NULL,
        "NTSeTaxNo" text NULL,
        "NTSApprNo" text NULL,
        "PayDuMonth" text NULL,
        "ExtraMonth" integer NULL,
        "ExtraDays" integer NULL,
        "CdcOffset" integer NULL,
        "SignMsg" text NULL,
        "SignDigest" text NULL,
        "CertifNum" text NULL,
        "KeyVersion" integer NOT NULL,
        "EDocGenTyp" text NULL,
        "ESeries" integer NULL,
        "EDocNum" text NULL,
        "EDocExpFrm" integer NOT NULL,
        "OnlineQuo" text NULL,
        "POSEqNum" text NULL,
        "POSManufSN" text NULL,
        "POSCashN" integer NOT NULL,
        "EDocStatus" text NULL,
        "EDocCntnt" text NULL,
        "EDocProces" text NULL,
        "EDocErrCod" text NULL,
        "EDocErrMsg" text NULL,
        "EDocCancel" text NULL,
        "EDocTest" text NULL,
        "EDocPrefix" text NULL,
        "CUP" integer NOT NULL,
        "CIG" integer NOT NULL,
        "DpmAsDscnt" text NULL,
        "Attachment" text NULL,
        "AtcEntry" integer NOT NULL,
        "SupplCode" text NULL,
        "GTSRlvnt" text NULL,
        "BaseDisc" numeric NULL,
        "BaseDiscSc" numeric NULL,
        "BaseDiscFc" numeric NULL,
        "BaseDiscPr" numeric NULL,
        "CreateTS" integer NOT NULL,
        "UpdateTS" integer NOT NULL,
        "SrvTaxRule" text NULL,
        "AnnInvDecR" integer NOT NULL,
        "Supplier" text NULL,
        "Releaser" integer NOT NULL,
        "Receiver" integer NOT NULL,
        "ToWhsCode" text NULL,
        "AssetDate" timestamp without time zone NULL,
        "Requester" text NULL,
        "ReqName" text NULL,
        "Branch" integer NULL,
        "Department" integer NULL,
        "Email" text NULL,
        "Notify" text NULL,
        "ReqType" integer NOT NULL,
        "OriginType" text NULL,
        "IsReuseNum" text NULL,
        "IsReuseNFN" text NULL,
        "DocDlvry" text NULL,
        "PaidDpm" numeric NULL,
        "PaidDpmF" numeric NULL,
        "PaidDpmS" numeric NULL,
        "EnvTypeNFe" integer NOT NULL,
        "AgrNo" integer NOT NULL,
        "IsAlt" text NULL,
        "AltBaseTyp" integer NOT NULL,
        "AltBaseEnt" integer NOT NULL,
        "AuthCode" text NULL,
        "StDlvDate" timestamp without time zone NULL,
        "StDlvTime" integer NOT NULL,
        "EndDlvDate" timestamp without time zone NULL,
        "EndDlvTime" integer NOT NULL,
        "VclPlate" text NULL,
        "ElCoStatus" text NULL,
        "AtDocType" text NULL,
        "ElCoMsg" text NULL,
        "PrintSEPA" text NULL,
        "FreeChrg" numeric NULL,
        "FreeChrgFC" numeric NULL,
        "FreeChrgSC" numeric NULL,
        "NfeValue" numeric NULL,
        "FiscDocNum" text NULL,
        "RelatedTyp" integer NOT NULL,
        "RelatedEnt" integer NOT NULL,
        "CCDEntry" integer NOT NULL,
        "NfePrntFo" integer NOT NULL,
        "ZrdAbs" integer NOT NULL,
        "POSRcptNo" integer NOT NULL,
        "FoCTax" numeric NULL,
        "FoCTaxFC" numeric NULL,
        "FoCTaxSC" numeric NULL,
        "TpCusPres" integer NOT NULL,
        "ExcDocDate" timestamp without time zone NULL,
        "FoCFrght" numeric NULL,
        "FoCFrghtFC" numeric NULL,
        "FoCFrghtSC" numeric NULL,
        "InterimTyp" integer NULL,
        "PTICode" text NULL,
        "Letter" text NULL,
        "FolNumFrom" integer NOT NULL,
        "FolNumTo" integer NOT NULL,
        "FolSeries" integer NOT NULL,
        "SplitTax" numeric NULL,
        "SplitTaxFC" numeric NULL,
        "SplitTaxSC" numeric NULL,
        "ToBinCode" text NULL,
        "PriceMode" text NULL,
        "PoDropPrss" text NULL,
        "PermitNo" text NULL,
        "MYFtype" text NULL,
        "DocTaxID" text NULL,
        "DateReport" timestamp without time zone NULL,
        "RepSection" text NULL,
        "ExclTaxRep" text NULL,
        "PosCashReg" integer NOT NULL,
        "DmpTransID" text NULL,
        "ECommerBP" text NULL,
        "EComerGSTN" text NULL,
        "Revision" text NULL,
        "RevRefNo" text NULL,
        "RevRefDate" timestamp without time zone NULL,
        "RevCreRefN" text NULL,
        "RevCreRefD" timestamp without time zone NULL,
        "TaxInvNo" text NULL,
        "FrmBpDate" timestamp without time zone NULL,
        "GSTTranTyp" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "ComTrade" text NULL,
        "UseBilAddr" text NULL,
        "IssReason" integer NULL,
        "ComTradeRt" text NULL,
        "SplitPmnt" text NULL,
        "SOIWizId" integer NOT NULL,
        "SelfPosted" text NULL,
        "EnBnkAcct" text NULL,
        "EncryptIV" text NULL,
        "DPPStatus" text NULL,
        "SAPPassprt" text NULL,
        "EWBGenType" text NULL,
        "CtActTax" numeric NULL,
        "CtActTaxFC" numeric NULL,
        "CtActTaxSC" numeric NULL,
        "EDocType" text NULL,
        "QRCodeSrc" text NULL,
        "AggregDoc" text NULL,
        "DataVers" integer NOT NULL,
        "ShipState" text NULL,
        "ShipPlace" text NULL,
        "CustOffice" text NULL,
        "FCI" text NULL,
        "NnSbCuAmnt" numeric NULL,
        "NnSbCuSC" numeric NULL,
        "NnSbCuFC" numeric NULL,
        "ExepCuAmnt" numeric NULL,
        "ExepCuSC" numeric NULL,
        "ExepCuFC" numeric NULL,
        "AddLegIn" text NULL,
        "LegTextF" integer NOT NULL,
        "IndFinal" text NULL,
        "DANFELgTxt" text NULL,
        "U_CXS_TRKY" text NULL,
        "U_CXS_TRID" text NULL,
        "U_CXS_FRST" text NULL,
        "U_CXS_FOST" text NULL,
        "U_CXS_STID" text NULL,
        "U_CXS_ACID" text NULL,
        "U_CXS_LYNO" text NULL,
        "U_CXS_LYAY" text NULL,
        "U_CXS_IASO" text NULL,
        "U_CXS_FRIV" text NULL,
        "U_CXS_SNGL" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_CXS_BREF" text NULL,
        "U_CXS_SLEX" text NULL,
        "U_CXS_STSN" text NULL,
        "U_CXS_TST2" text NULL,
        "U_CXS_FMST" text NULL,
        "U_CXS_TOST" text NULL,
        "U_CXS_STRT" text NULL,
        "U_TransType" text NULL,
        "U_CXS_STAS" text NULL,
        "U_CXS_MDFD" text NULL,
        "U_VandorExchange" text NULL,
        "U_Freight" numeric NULL,
        CONSTRAINT "PK_OINV" PRIMARY KEY ("DocEntry")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OITM" (
        "ItemCode" text NOT NULL,
        CONSTRAINT "PK_OITM" PRIMARY KEY ("ItemCode")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OITW" (
        "ItemCode" text NULL,
        "WhsCode" text NULL,
        "OnHand" numeric NOT NULL,
        "IsCommited" numeric NOT NULL,
        "OnOrder" numeric NOT NULL,
        "Consig" numeric NOT NULL,
        "Counted" numeric NOT NULL,
        "WasCounted" text NULL,
        "UserSign" smallint NOT NULL,
        "MinStock" numeric NOT NULL,
        "MaxStock" numeric NOT NULL,
        "MinOrder" numeric NOT NULL,
        "AvgPrice" numeric NOT NULL,
        "Locked" text NULL,
        "BalInvntAc" text NULL,
        "SaleCostAc" text NULL,
        "TransferAc" text NULL,
        "RevenuesAc" text NULL,
        "VarianceAc" text NULL,
        "DecreasAc" text NULL,
        "IncreasAc" text NULL,
        "ReturnAc" text NULL,
        "ExpensesAc" text NULL,
        "EURevenuAc" text NULL,
        "EUExpensAc" text NULL,
        "FrRevenuAc" text NULL,
        "FrExpensAc" text NULL,
        "ExmptIncom" text NULL,
        "PriceDifAc" text NULL,
        "ExchangeAc" text NULL,
        "BalanceAcc" text NULL,
        "PurchaseAc" text NULL,
        "PAReturnAc" text NULL,
        "PurchOfsAc" text NULL,
        "ShpdGdsAct" text NULL,
        "VatRevAct" text NULL,
        "StockValue" numeric NOT NULL,
        "DecresGlAc" text NULL,
        "IncresGlAc" text NULL,
        "StokRvlAct" text NULL,
        "StkOffsAct" text NULL,
        "WipAcct" text NULL,
        "WipVarAcct" text NULL,
        "CostRvlAct" text NULL,
        "CstOffsAct" text NULL,
        "ExpClrAct" text NULL,
        "ExpOfstAct" text NULL,
        "Object" text NULL,
        "logInstanc" integer NOT NULL,
        "createDate" timestamp without time zone NOT NULL,
        "userSign2" smallint NOT NULL,
        "updateDate" timestamp without time zone NOT NULL,
        "ARCMAct" text NULL,
        "ARCMFrnAct" text NULL,
        "ARCMEUAct" text NULL,
        "ARCMExpAct" text NULL,
        "APCMAct" text NULL,
        "APCMFrnAct" text NULL,
        "APCMEUAct" text NULL,
        "RevRetAct" text NULL,
        "NegStckAct" text NULL,
        "StkInTnAct" text NULL,
        "PurBalAct" text NULL,
        "WhICenAct" text NULL,
        "WhOCenAct" text NULL,
        "WipOffset" text NULL,
        "StockOffst" text NULL,
        "DftBinAbs" integer NOT NULL,
        "DftBinEnfd" text NULL,
        "Freezed" text NULL,
        "FreezeDoc" integer NOT NULL,
        "FreeChrgSA" text NULL,
        "FreeChrgPU" text NULL,
        "IndEscala" text NULL,
        "CNJPMan" text NULL,
        "U_CXS_TRTP" text NULL,
        "U_Lock" text NULL,
        "U_MinDayCategory" integer NOT NULL,
        "U_MaxDayCategory" integer NOT NULL,
        "U_MinDayItem" integer NOT NULL,
        "U_MaxDayItem" integer NOT NULL,
        "U_FixMin" integer NOT NULL,
        "U_FixMax" integer NOT NULL,
        "U_Daily" text NULL,
        "U_TakeLargeValue" text NULL,
        "U_TakeFixMinMax" text NULL,
        "U_ReasonCodeTake" text NULL,
        "U_Remark1" text NULL,
        "U_Remark2" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OPDN" (
        "DocEntry" integer NOT NULL,
        "DocNum" integer NOT NULL,
        "DocType" text NULL,
        "CANCELED" text NULL,
        "Handwrtten" text NULL,
        "Printed" text NULL,
        "DocStatus" text NULL,
        "InvntSttus" text NULL,
        "Transfered" text NULL,
        "ObjType" text NULL,
        "DocDate" timestamp without time zone NULL,
        "DocDueDate" timestamp without time zone NULL,
        "CardCode" text NULL,
        "CardName" text NULL,
        "Address" text NULL,
        "NumAtCard" text NULL,
        "VatPercent" numeric NULL,
        "VatSum" numeric NULL,
        "VatSumFC" numeric NULL,
        "DiscPrcnt" numeric NULL,
        "DiscSum" numeric NULL,
        "DiscSumFC" numeric NULL,
        "DocCur" text NULL,
        "DocRate" numeric NULL,
        "DocTotal" numeric NULL,
        "DocTotalFC" numeric NULL,
        "PaidToDate" numeric NULL,
        "PaidFC" numeric NULL,
        "GrosProfit" numeric NULL,
        "GrosProfFC" numeric NULL,
        "Ref1" text NULL,
        "Ref2" text NULL,
        "Comments" text NULL,
        "JrnlMemo" text NULL,
        "TransId" integer NOT NULL,
        "ReceiptNum" integer NOT NULL,
        "GroupNum" integer NULL,
        "DocTime" integer NULL,
        "SlpCode" integer NOT NULL,
        "TrnspCode" integer NULL,
        "PartSupply" text NULL,
        "Confirmed" text NULL,
        "GrossBase" integer NULL,
        "ImportEnt" integer NOT NULL,
        "CreateTran" text NULL,
        "SummryType" text NULL,
        "UpdInvnt" text NULL,
        "UpdCardBal" text NULL,
        "Instance" integer NULL,
        "Flags" integer NOT NULL,
        "InvntDirec" text NULL,
        "CntctCode" integer NOT NULL,
        "ShowSCN" text NULL,
        "FatherCard" text NULL,
        "SysRate" numeric NULL,
        "CurSource" text NULL,
        "VatSumSy" numeric NULL,
        "DiscSumSy" numeric NULL,
        "DocTotalSy" numeric NULL,
        "PaidSys" numeric NULL,
        "FatherType" text NULL,
        "GrosProfSy" numeric NULL,
        "UpdateDate" timestamp without time zone NULL,
        "IsICT" text NULL,
        "CreateDate" timestamp without time zone NULL,
        "Volume" numeric NULL,
        "VolUnit" integer NULL,
        "Weight" numeric NULL,
        "WeightUnit" integer NULL,
        "Series" integer NOT NULL,
        "TaxDate" timestamp without time zone NULL,
        "Filler" text NULL,
        "DataSource" text NULL,
        "StampNum" text NULL,
        "isCrin" text NULL,
        "FinncPriod" integer NOT NULL,
        "UserSign" integer NULL,
        "selfInv" text NULL,
        "VatPaid" numeric NULL,
        "VatPaidFC" numeric NULL,
        "VatPaidSys" numeric NULL,
        "UserSign2" integer NULL,
        "WddStatus" text NULL,
        "draftKey" integer NOT NULL,
        "TotalExpns" numeric NULL,
        "TotalExpFC" numeric NULL,
        "TotalExpSC" numeric NULL,
        "DunnLevel" integer NOT NULL,
        "Address2" text NULL,
        "LogInstanc" integer NOT NULL,
        "Exported" text NULL,
        "StationID" integer NOT NULL,
        "Indicator" text NULL,
        "NetProc" text NULL,
        "AqcsTax" numeric NULL,
        "AqcsTaxFC" numeric NULL,
        "AqcsTaxSC" numeric NULL,
        "CashDiscPr" numeric NULL,
        "CashDiscnt" numeric NULL,
        "CashDiscFC" numeric NULL,
        "CashDiscSC" numeric NULL,
        "ShipToCode" text NULL,
        "LicTradNum" text NULL,
        "PaymentRef" text NULL,
        "WTSum" numeric NULL,
        "WTSumFC" numeric NULL,
        "WTSumSC" numeric NULL,
        "RoundDif" numeric NULL,
        "RoundDifFC" numeric NULL,
        "RoundDifSy" numeric NULL,
        "CheckDigit" text NULL,
        "Form1099" integer NOT NULL,
        "Box1099" text NULL,
        submitted text NULL,
        "PoPrss" text NULL,
        "Rounding" text NULL,
        "RevisionPo" text NULL,
        "Segment" integer NULL,
        "ReqDate" timestamp without time zone NULL,
        "CancelDate" timestamp without time zone NULL,
        "PickStatus" text NULL,
        "Pick" text NULL,
        "BlockDunn" text NULL,
        "PeyMethod" text NULL,
        "PayBlock" text NULL,
        "PayBlckRef" integer NOT NULL,
        "MaxDscn" text NULL,
        "Reserve" text NULL,
        "Max1099" numeric NULL,
        "CntrlBnk" text NULL,
        "PickRmrk" text NULL,
        "ISRCodLine" text NULL,
        "ExpAppl" numeric NULL,
        "ExpApplFC" numeric NULL,
        "ExpApplSC" numeric NULL,
        "Project" text NULL,
        "DeferrTax" text NULL,
        "LetterNum" text NULL,
        "FromDate" timestamp without time zone NULL,
        "ToDate" timestamp without time zone NULL,
        "WTApplied" numeric NULL,
        "WTAppliedF" numeric NULL,
        "BoeReserev" text NULL,
        "AgentCode" text NULL,
        "WTAppliedS" numeric NULL,
        "EquVatSum" numeric NULL,
        "EquVatSumF" numeric NULL,
        "EquVatSumS" numeric NULL,
        "Installmnt" integer NULL,
        "VATFirst" text NULL,
        "NnSbAmnt" numeric NULL,
        "NnSbAmntSC" numeric NULL,
        "NbSbAmntFC" numeric NULL,
        "ExepAmnt" numeric NULL,
        "ExepAmntSC" numeric NULL,
        "ExepAmntFC" numeric NULL,
        "VatDate" timestamp without time zone NULL,
        "CorrExt" text NULL,
        "CorrInv" integer NOT NULL,
        "NCorrInv" integer NOT NULL,
        "CEECFlag" text NULL,
        "BaseAmnt" numeric NULL,
        "BaseAmntSC" numeric NULL,
        "BaseAmntFC" numeric NULL,
        "CtlAccount" text NULL,
        "BPLId" integer NOT NULL,
        "BPLName" text NULL,
        "VATRegNum" text NULL,
        "TxInvRptNo" text NULL,
        "TxInvRptDt" timestamp without time zone NULL,
        "KVVATCode" text NULL,
        "WTDetails" text NULL,
        "SumAbsId" integer NOT NULL,
        "SumRptDate" timestamp without time zone NULL,
        "PIndicator" text NULL,
        "ManualNum" text NULL,
        "UseShpdGd" text NULL,
        "BaseVtAt" numeric NULL,
        "BaseVtAtSC" numeric NULL,
        "BaseVtAtFC" numeric NULL,
        "NnSbVAt" numeric NULL,
        "NnSbVAtSC" numeric NULL,
        "NbSbVAtFC" numeric NULL,
        "ExptVAt" numeric NULL,
        "ExptVAtSC" numeric NULL,
        "ExptVAtFC" numeric NULL,
        "LYPmtAt" numeric NULL,
        "LYPmtAtSC" numeric NULL,
        "LYPmtAtFC" numeric NULL,
        "ExpAnSum" numeric NULL,
        "ExpAnSys" numeric NULL,
        "ExpAnFrgn" numeric NULL,
        "DocSubType" text NULL,
        "DpmStatus" text NULL,
        "DpmAmnt" numeric NULL,
        "DpmAmntSC" numeric NULL,
        "DpmAmntFC" numeric NULL,
        "DpmDrawn" text NULL,
        "DpmPrcnt" numeric NULL,
        "PaidSum" numeric NULL,
        "PaidSumFc" numeric NULL,
        "PaidSumSc" numeric NULL,
        "FolioPref" text NULL,
        "FolioNum" integer NOT NULL,
        "DpmAppl" numeric NULL,
        "DpmApplFc" numeric NULL,
        "DpmApplSc" numeric NULL,
        "LPgFolioN" integer NOT NULL,
        "Header" text NULL,
        "Footer" text NULL,
        "Posted" text NULL,
        "OwnerCode" integer NOT NULL,
        "BPChCode" text NULL,
        "BPChCntc" integer NOT NULL,
        "PayToCode" text NULL,
        "IsPaytoBnk" text NULL,
        "BnkCntry" text NULL,
        "BankCode" text NULL,
        "BnkAccount" text NULL,
        "BnkBranch" text NULL,
        "isIns" text NULL,
        "TrackNo" text NULL,
        "VersionNum" text NULL,
        "LangCode" integer NOT NULL,
        "BPNameOW" text NULL,
        "BillToOW" text NULL,
        "ShipToOW" text NULL,
        "RetInvoice" text NULL,
        "ClsDate" timestamp without time zone NULL,
        "MInvNum" integer NOT NULL,
        "MInvDate" timestamp without time zone NULL,
        "SeqCode" integer NULL,
        "Serial" integer NOT NULL,
        "SeriesStr" text NULL,
        "SubStr" text NULL,
        "Model" text NULL,
        "TaxOnExp" numeric NULL,
        "TaxOnExpFc" numeric NULL,
        "TaxOnExpSc" numeric NULL,
        "TaxOnExAp" numeric NULL,
        "TaxOnExApF" numeric NULL,
        "TaxOnExApS" numeric NULL,
        "LastPmnTyp" text NULL,
        "LndCstNum" integer NOT NULL,
        "UseCorrVat" text NULL,
        "BlkCredMmo" text NULL,
        "OpenForLaC" text NULL,
        "Excised" text NULL,
        "ExcRefDate" timestamp without time zone NULL,
        "ExcRmvTime" text NULL,
        "SrvGpPrcnt" numeric NULL,
        "DepositNum" integer NOT NULL,
        "CertNum" text NULL,
        "DutyStatus" text NULL,
        "AutoCrtFlw" text NULL,
        "FlwRefDate" timestamp without time zone NULL,
        "FlwRefNum" text NULL,
        "VatJENum" integer NOT NULL,
        "DpmVat" numeric NULL,
        "DpmVatFc" numeric NULL,
        "DpmVatSc" numeric NULL,
        "DpmAppVat" numeric NULL,
        "DpmAppVatF" numeric NULL,
        "DpmAppVatS" numeric NULL,
        "InsurOp347" text NULL,
        "IgnRelDoc" text NULL,
        "BuildDesc" text NULL,
        "ResidenNum" text NULL,
        "Checker" integer NOT NULL,
        "Payee" integer NOT NULL,
        "CopyNumber" integer NOT NULL,
        "SSIExmpt" text NULL,
        "PQTGrpSer" integer NOT NULL,
        "PQTGrpNum" integer NOT NULL,
        "PQTGrpHW" text NULL,
        "ReopOriDoc" text NULL,
        "ReopManCls" text NULL,
        "DocManClsd" text NULL,
        "ClosingOpt" integer NULL,
        "SpecDate" timestamp without time zone NULL,
        "Ordered" text NULL,
        "NTSApprov" text NULL,
        "NTSWebSite" integer NULL,
        "NTSeTaxNo" text NULL,
        "NTSApprNo" text NULL,
        "PayDuMonth" text NULL,
        "ExtraMonth" integer NULL,
        "ExtraDays" integer NULL,
        "CdcOffset" integer NULL,
        "SignMsg" text NULL,
        "SignDigest" text NULL,
        "CertifNum" text NULL,
        "KeyVersion" integer NOT NULL,
        "EDocGenTyp" text NULL,
        "ESeries" integer NULL,
        "EDocNum" text NULL,
        "EDocExpFrm" integer NOT NULL,
        "OnlineQuo" text NULL,
        "POSEqNum" text NULL,
        "POSManufSN" text NULL,
        "POSCashN" integer NOT NULL,
        "EDocStatus" text NULL,
        "EDocCntnt" text NULL,
        "EDocProces" text NULL,
        "EDocErrCod" text NULL,
        "EDocErrMsg" text NULL,
        "EDocCancel" text NULL,
        "EDocTest" text NULL,
        "EDocPrefix" text NULL,
        "CUP" integer NOT NULL,
        "CIG" integer NOT NULL,
        "DpmAsDscnt" text NULL,
        "Attachment" text NULL,
        "AtcEntry" integer NOT NULL,
        "SupplCode" text NULL,
        "GTSRlvnt" text NULL,
        "BaseDisc" numeric NULL,
        "BaseDiscSc" numeric NULL,
        "BaseDiscFc" numeric NULL,
        "BaseDiscPr" numeric NULL,
        "CreateTS" integer NOT NULL,
        "UpdateTS" integer NOT NULL,
        "SrvTaxRule" text NULL,
        "AnnInvDecR" integer NOT NULL,
        "Supplier" text NULL,
        "Releaser" integer NOT NULL,
        "Receiver" integer NOT NULL,
        "ToWhsCode" text NULL,
        "AssetDate" timestamp without time zone NULL,
        "Requester" text NULL,
        "ReqName" text NULL,
        "Branch" integer NULL,
        "Department" integer NULL,
        "Email" text NULL,
        "Notify" text NULL,
        "ReqType" integer NOT NULL,
        "OriginType" text NULL,
        "IsReuseNum" text NULL,
        "IsReuseNFN" text NULL,
        "DocDlvry" text NULL,
        "PaidDpm" numeric NULL,
        "PaidDpmF" numeric NULL,
        "PaidDpmS" numeric NULL,
        "EnvTypeNFe" integer NOT NULL,
        "AgrNo" integer NOT NULL,
        "IsAlt" text NULL,
        "AltBaseTyp" integer NOT NULL,
        "AltBaseEnt" integer NOT NULL,
        "AuthCode" text NULL,
        "StDlvDate" timestamp without time zone NULL,
        "StDlvTime" integer NOT NULL,
        "EndDlvDate" timestamp without time zone NULL,
        "EndDlvTime" integer NOT NULL,
        "VclPlate" text NULL,
        "ElCoStatus" text NULL,
        "AtDocType" text NULL,
        "ElCoMsg" text NULL,
        "PrintSEPA" text NULL,
        "FreeChrg" numeric NULL,
        "FreeChrgFC" numeric NULL,
        "FreeChrgSC" numeric NULL,
        "NfeValue" numeric NULL,
        "FiscDocNum" text NULL,
        "RelatedTyp" integer NOT NULL,
        "RelatedEnt" integer NOT NULL,
        "CCDEntry" integer NOT NULL,
        "NfePrntFo" integer NOT NULL,
        "ZrdAbs" integer NOT NULL,
        "POSRcptNo" integer NOT NULL,
        "FoCTax" numeric NULL,
        "FoCTaxFC" numeric NULL,
        "FoCTaxSC" numeric NULL,
        "TpCusPres" integer NOT NULL,
        "ExcDocDate" timestamp without time zone NULL,
        "FoCFrght" numeric NULL,
        "FoCFrghtFC" numeric NULL,
        "FoCFrghtSC" numeric NULL,
        "InterimTyp" integer NULL,
        "PTICode" text NULL,
        "Letter" text NULL,
        "FolNumFrom" integer NOT NULL,
        "FolNumTo" integer NOT NULL,
        "FolSeries" integer NOT NULL,
        "SplitTax" numeric NULL,
        "SplitTaxFC" numeric NULL,
        "SplitTaxSC" numeric NULL,
        "ToBinCode" text NULL,
        "PriceMode" text NULL,
        "PoDropPrss" text NULL,
        "PermitNo" text NULL,
        "MYFtype" text NULL,
        "DocTaxID" text NULL,
        "DateReport" timestamp without time zone NULL,
        "RepSection" text NULL,
        "ExclTaxRep" text NULL,
        "PosCashReg" integer NOT NULL,
        "DmpTransID" text NULL,
        "ECommerBP" text NULL,
        "EComerGSTN" text NULL,
        "Revision" text NULL,
        "RevRefNo" text NULL,
        "RevRefDate" timestamp without time zone NULL,
        "RevCreRefN" text NULL,
        "RevCreRefD" timestamp without time zone NULL,
        "TaxInvNo" text NULL,
        "FrmBpDate" timestamp without time zone NULL,
        "GSTTranTyp" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "ComTrade" text NULL,
        "UseBilAddr" text NULL,
        "IssReason" integer NULL,
        "ComTradeRt" text NULL,
        "SplitPmnt" text NULL,
        "SOIWizId" integer NOT NULL,
        "SelfPosted" text NULL,
        "EnBnkAcct" text NULL,
        "EncryptIV" text NULL,
        "DPPStatus" text NULL,
        "SAPPassprt" text NULL,
        "EWBGenType" text NULL,
        "CtActTax" numeric NULL,
        "CtActTaxFC" numeric NULL,
        "CtActTaxSC" numeric NULL,
        "EDocType" text NULL,
        "QRCodeSrc" text NULL,
        "AggregDoc" text NULL,
        "DataVers" integer NOT NULL,
        "ShipState" text NULL,
        "ShipPlace" text NULL,
        "CustOffice" text NULL,
        "FCI" text NULL,
        "NnSbCuAmnt" numeric NULL,
        "NnSbCuSC" numeric NULL,
        "NnSbCuFC" numeric NULL,
        "ExepCuAmnt" numeric NULL,
        "ExepCuSC" numeric NULL,
        "ExepCuFC" numeric NULL,
        "AddLegIn" text NULL,
        "LegTextF" integer NOT NULL,
        "IndFinal" text NULL,
        "DANFELgTxt" text NULL,
        "U_CXS_TRKY" text NULL,
        "U_CXS_TRID" text NULL,
        "U_CXS_FRST" text NULL,
        "U_CXS_FOST" text NULL,
        "U_CXS_STID" text NULL,
        "U_CXS_ACID" text NULL,
        "U_CXS_LYNO" text NULL,
        "U_CXS_LYAY" text NULL,
        "U_CXS_IASO" text NULL,
        "U_CXS_FRIV" text NULL,
        "U_CXS_SNGL" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_CXS_BREF" text NULL,
        "U_CXS_SLEX" text NULL,
        "U_CXS_STSN" text NULL,
        "U_CXS_TST2" text NULL,
        "U_CXS_FMST" text NULL,
        "U_CXS_TOST" text NULL,
        "U_CXS_STRT" text NULL,
        "U_TransType" text NULL,
        "U_CXS_STAS" text NULL,
        "U_CXS_MDFD" text NULL,
        "U_VandorExchange" text NULL,
        "U_Freight" numeric NULL,
        CONSTRAINT "PK_OPDN" PRIMARY KEY ("DocEntry")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OPLN" (
        "ListNum" smallint NOT NULL,
        "ListName" text NULL,
        "BASE_NUM" smallint NOT NULL,
        "Factor" numeric NOT NULL,
        "RoundSys" smallint NOT NULL,
        "GroupCode" smallint NOT NULL,
        "DataSource" text NULL,
        "SPPCounter" integer NOT NULL,
        "UserSign" smallint NOT NULL,
        "IsGrossPrc" text NULL,
        "LogInstanc" integer NOT NULL,
        "UserSign2" smallint NOT NULL,
        "UpdateDate" timestamp without time zone NOT NULL,
        "ValidFor" text NULL,
        "ValidFrom" timestamp without time zone NOT NULL,
        "ValidTo" timestamp without time zone NOT NULL,
        "CreateDate" timestamp without time zone NOT NULL,
        "PrimCurr" text NULL,
        "AddCurr1" text NULL,
        "AddCurr2" text NULL,
        "RoundRule" text NULL,
        "ExtAmount" numeric NOT NULL,
        "RndFrmtInt" text NULL,
        "RndFrmtDec" text NULL,
        "U_CXS_RPCL" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OPOR" (
        "DocEntry" integer NOT NULL,
        "DocNum" integer NOT NULL,
        "DocType" text NULL,
        "CANCELED" text NULL,
        "Handwrtten" text NULL,
        "Printed" text NULL,
        "DocStatus" text NULL,
        "InvntSttus" text NULL,
        "Transfered" text NULL,
        "ObjType" text NULL,
        "DocDate" timestamp without time zone NULL,
        "DocDueDate" timestamp without time zone NULL,
        "CardCode" text NULL,
        "CardName" text NULL,
        "Address" text NULL,
        "NumAtCard" text NULL,
        "VatPercent" numeric NULL,
        "VatSum" numeric NULL,
        "VatSumFC" numeric NULL,
        "DiscPrcnt" numeric NULL,
        "DiscSum" numeric NULL,
        "DiscSumFC" numeric NULL,
        "DocCur" text NULL,
        "DocRate" numeric NULL,
        "DocTotal" numeric NULL,
        "DocTotalFC" numeric NULL,
        "PaidToDate" numeric NULL,
        "PaidFC" numeric NULL,
        "GrosProfit" numeric NULL,
        "GrosProfFC" numeric NULL,
        "Ref1" text NULL,
        "Ref2" text NULL,
        "Comments" text NULL,
        "JrnlMemo" text NULL,
        "TransId" integer NOT NULL,
        "ReceiptNum" integer NOT NULL,
        "GroupNum" integer NULL,
        "DocTime" integer NULL,
        "SlpCode" integer NOT NULL,
        "TrnspCode" integer NULL,
        "PartSupply" text NULL,
        "Confirmed" text NULL,
        "GrossBase" integer NULL,
        "ImportEnt" integer NOT NULL,
        "CreateTran" text NULL,
        "SummryType" text NULL,
        "UpdInvnt" text NULL,
        "UpdCardBal" text NULL,
        "Instance" integer NULL,
        "Flags" integer NOT NULL,
        "InvntDirec" text NULL,
        "CntctCode" integer NOT NULL,
        "ShowSCN" text NULL,
        "FatherCard" text NULL,
        "SysRate" numeric NULL,
        "CurSource" text NULL,
        "VatSumSy" numeric NULL,
        "DiscSumSy" numeric NULL,
        "DocTotalSy" numeric NULL,
        "PaidSys" numeric NULL,
        "FatherType" text NULL,
        "GrosProfSy" numeric NULL,
        "UpdateDate" timestamp without time zone NULL,
        "IsICT" text NULL,
        "CreateDate" timestamp without time zone NULL,
        "Volume" numeric NULL,
        "VolUnit" integer NULL,
        "Weight" numeric NULL,
        "WeightUnit" integer NULL,
        "Series" integer NOT NULL,
        "TaxDate" timestamp without time zone NULL,
        "Filler" text NULL,
        "DataSource" text NULL,
        "StampNum" text NULL,
        "isCrin" text NULL,
        "FinncPriod" integer NOT NULL,
        "UserSign" integer NULL,
        "selfInv" text NULL,
        "VatPaid" numeric NULL,
        "VatPaidFC" numeric NULL,
        "VatPaidSys" numeric NULL,
        "UserSign2" integer NULL,
        "WddStatus" text NULL,
        "draftKey" integer NOT NULL,
        "TotalExpns" numeric NULL,
        "TotalExpFC" numeric NULL,
        "TotalExpSC" numeric NULL,
        "DunnLevel" integer NOT NULL,
        "Address2" text NULL,
        "LogInstanc" integer NOT NULL,
        "Exported" text NULL,
        "StationID" integer NOT NULL,
        "Indicator" text NULL,
        "NetProc" text NULL,
        "AqcsTax" numeric NULL,
        "AqcsTaxFC" numeric NULL,
        "AqcsTaxSC" numeric NULL,
        "CashDiscPr" numeric NULL,
        "CashDiscnt" numeric NULL,
        "CashDiscFC" numeric NULL,
        "CashDiscSC" numeric NULL,
        "ShipToCode" text NULL,
        "LicTradNum" text NULL,
        "PaymentRef" text NULL,
        "WTSum" numeric NULL,
        "WTSumFC" numeric NULL,
        "WTSumSC" numeric NULL,
        "RoundDif" numeric NULL,
        "RoundDifFC" numeric NULL,
        "RoundDifSy" numeric NULL,
        "CheckDigit" text NULL,
        "Form1099" integer NOT NULL,
        "Box1099" text NULL,
        submitted text NULL,
        "PoPrss" text NULL,
        "Rounding" text NULL,
        "RevisionPo" text NULL,
        "Segment" integer NULL,
        "ReqDate" timestamp without time zone NULL,
        "CancelDate" timestamp without time zone NULL,
        "PickStatus" text NULL,
        "Pick" text NULL,
        "BlockDunn" text NULL,
        "PeyMethod" text NULL,
        "PayBlock" text NULL,
        "PayBlckRef" integer NOT NULL,
        "MaxDscn" text NULL,
        "Reserve" text NULL,
        "Max1099" numeric NULL,
        "CntrlBnk" text NULL,
        "PickRmrk" text NULL,
        "ISRCodLine" text NULL,
        "ExpAppl" numeric NULL,
        "ExpApplFC" numeric NULL,
        "ExpApplSC" numeric NULL,
        "Project" text NULL,
        "DeferrTax" text NULL,
        "LetterNum" text NULL,
        "FromDate" timestamp without time zone NULL,
        "ToDate" timestamp without time zone NULL,
        "WTApplied" numeric NULL,
        "WTAppliedF" numeric NULL,
        "BoeReserev" text NULL,
        "AgentCode" text NULL,
        "WTAppliedS" numeric NULL,
        "EquVatSum" numeric NULL,
        "EquVatSumF" numeric NULL,
        "EquVatSumS" numeric NULL,
        "Installmnt" integer NULL,
        "VATFirst" text NULL,
        "NnSbAmnt" numeric NULL,
        "NnSbAmntSC" numeric NULL,
        "NbSbAmntFC" numeric NULL,
        "ExepAmnt" numeric NULL,
        "ExepAmntSC" numeric NULL,
        "ExepAmntFC" numeric NULL,
        "VatDate" timestamp without time zone NULL,
        "CorrExt" text NULL,
        "CorrInv" integer NOT NULL,
        "NCorrInv" integer NOT NULL,
        "CEECFlag" text NULL,
        "BaseAmnt" numeric NULL,
        "BaseAmntSC" numeric NULL,
        "BaseAmntFC" numeric NULL,
        "CtlAccount" text NULL,
        "BPLId" integer NOT NULL,
        "BPLName" text NULL,
        "VATRegNum" text NULL,
        "TxInvRptNo" text NULL,
        "TxInvRptDt" timestamp without time zone NULL,
        "KVVATCode" text NULL,
        "WTDetails" text NULL,
        "SumAbsId" integer NOT NULL,
        "SumRptDate" timestamp without time zone NULL,
        "PIndicator" text NULL,
        "ManualNum" text NULL,
        "UseShpdGd" text NULL,
        "BaseVtAt" numeric NULL,
        "BaseVtAtSC" numeric NULL,
        "BaseVtAtFC" numeric NULL,
        "NnSbVAt" numeric NULL,
        "NnSbVAtSC" numeric NULL,
        "NbSbVAtFC" numeric NULL,
        "ExptVAt" numeric NULL,
        "ExptVAtSC" numeric NULL,
        "ExptVAtFC" numeric NULL,
        "LYPmtAt" numeric NULL,
        "LYPmtAtSC" numeric NULL,
        "LYPmtAtFC" numeric NULL,
        "ExpAnSum" numeric NULL,
        "ExpAnSys" numeric NULL,
        "ExpAnFrgn" numeric NULL,
        "DocSubType" text NULL,
        "DpmStatus" text NULL,
        "DpmAmnt" numeric NULL,
        "DpmAmntSC" numeric NULL,
        "DpmAmntFC" numeric NULL,
        "DpmDrawn" text NULL,
        "DpmPrcnt" numeric NULL,
        "PaidSum" numeric NULL,
        "PaidSumFc" numeric NULL,
        "PaidSumSc" numeric NULL,
        "FolioPref" text NULL,
        "FolioNum" integer NOT NULL,
        "DpmAppl" numeric NULL,
        "DpmApplFc" numeric NULL,
        "DpmApplSc" numeric NULL,
        "LPgFolioN" integer NOT NULL,
        "Header" text NULL,
        "Footer" text NULL,
        "Posted" text NULL,
        "OwnerCode" integer NOT NULL,
        "BPChCode" text NULL,
        "BPChCntc" integer NOT NULL,
        "PayToCode" text NULL,
        "IsPaytoBnk" text NULL,
        "BnkCntry" text NULL,
        "BankCode" text NULL,
        "BnkAccount" text NULL,
        "BnkBranch" text NULL,
        "isIns" text NULL,
        "TrackNo" text NULL,
        "VersionNum" text NULL,
        "LangCode" integer NOT NULL,
        "BPNameOW" text NULL,
        "BillToOW" text NULL,
        "ShipToOW" text NULL,
        "RetInvoice" text NULL,
        "ClsDate" timestamp without time zone NULL,
        "MInvNum" integer NOT NULL,
        "MInvDate" timestamp without time zone NULL,
        "SeqCode" integer NULL,
        "Serial" integer NOT NULL,
        "SeriesStr" text NULL,
        "SubStr" text NULL,
        "Model" text NULL,
        "TaxOnExp" numeric NULL,
        "TaxOnExpFc" numeric NULL,
        "TaxOnExpSc" numeric NULL,
        "TaxOnExAp" numeric NULL,
        "TaxOnExApF" numeric NULL,
        "TaxOnExApS" numeric NULL,
        "LastPmnTyp" text NULL,
        "LndCstNum" integer NOT NULL,
        "UseCorrVat" text NULL,
        "BlkCredMmo" text NULL,
        "OpenForLaC" text NULL,
        "Excised" text NULL,
        "ExcRefDate" timestamp without time zone NULL,
        "ExcRmvTime" text NULL,
        "SrvGpPrcnt" numeric NULL,
        "DepositNum" integer NOT NULL,
        "CertNum" text NULL,
        "DutyStatus" text NULL,
        "AutoCrtFlw" text NULL,
        "FlwRefDate" timestamp without time zone NULL,
        "FlwRefNum" text NULL,
        "VatJENum" integer NOT NULL,
        "DpmVat" numeric NULL,
        "DpmVatFc" numeric NULL,
        "DpmVatSc" numeric NULL,
        "DpmAppVat" numeric NULL,
        "DpmAppVatF" numeric NULL,
        "DpmAppVatS" numeric NULL,
        "InsurOp347" text NULL,
        "IgnRelDoc" text NULL,
        "BuildDesc" text NULL,
        "ResidenNum" text NULL,
        "Checker" integer NOT NULL,
        "Payee" integer NOT NULL,
        "CopyNumber" integer NOT NULL,
        "SSIExmpt" text NULL,
        "PQTGrpSer" integer NOT NULL,
        "PQTGrpNum" integer NOT NULL,
        "PQTGrpHW" text NULL,
        "ReopOriDoc" text NULL,
        "ReopManCls" text NULL,
        "DocManClsd" text NULL,
        "ClosingOpt" integer NULL,
        "SpecDate" timestamp without time zone NULL,
        "Ordered" text NULL,
        "NTSApprov" text NULL,
        "NTSWebSite" integer NULL,
        "NTSeTaxNo" text NULL,
        "NTSApprNo" text NULL,
        "PayDuMonth" text NULL,
        "ExtraMonth" integer NULL,
        "ExtraDays" integer NULL,
        "CdcOffset" integer NULL,
        "SignMsg" text NULL,
        "SignDigest" text NULL,
        "CertifNum" text NULL,
        "KeyVersion" integer NOT NULL,
        "EDocGenTyp" text NULL,
        "ESeries" integer NULL,
        "EDocNum" text NULL,
        "EDocExpFrm" integer NOT NULL,
        "OnlineQuo" text NULL,
        "POSEqNum" text NULL,
        "POSManufSN" text NULL,
        "POSCashN" integer NOT NULL,
        "EDocStatus" text NULL,
        "EDocCntnt" text NULL,
        "EDocProces" text NULL,
        "EDocErrCod" text NULL,
        "EDocErrMsg" text NULL,
        "EDocCancel" text NULL,
        "EDocTest" text NULL,
        "EDocPrefix" text NULL,
        "CUP" integer NOT NULL,
        "CIG" integer NOT NULL,
        "DpmAsDscnt" text NULL,
        "Attachment" text NULL,
        "AtcEntry" integer NOT NULL,
        "SupplCode" text NULL,
        "GTSRlvnt" text NULL,
        "BaseDisc" numeric NULL,
        "BaseDiscSc" numeric NULL,
        "BaseDiscFc" numeric NULL,
        "BaseDiscPr" numeric NULL,
        "CreateTS" integer NOT NULL,
        "UpdateTS" integer NOT NULL,
        "SrvTaxRule" text NULL,
        "AnnInvDecR" integer NOT NULL,
        "Supplier" text NULL,
        "Releaser" integer NOT NULL,
        "Receiver" integer NOT NULL,
        "ToWhsCode" text NULL,
        "AssetDate" timestamp without time zone NULL,
        "Requester" text NULL,
        "ReqName" text NULL,
        "Branch" integer NULL,
        "Department" integer NULL,
        "Email" text NULL,
        "Notify" text NULL,
        "ReqType" integer NOT NULL,
        "OriginType" text NULL,
        "IsReuseNum" text NULL,
        "IsReuseNFN" text NULL,
        "DocDlvry" text NULL,
        "PaidDpm" numeric NULL,
        "PaidDpmF" numeric NULL,
        "PaidDpmS" numeric NULL,
        "EnvTypeNFe" integer NOT NULL,
        "AgrNo" integer NOT NULL,
        "IsAlt" text NULL,
        "AltBaseTyp" integer NOT NULL,
        "AltBaseEnt" integer NOT NULL,
        "AuthCode" text NULL,
        "StDlvDate" timestamp without time zone NULL,
        "StDlvTime" integer NOT NULL,
        "EndDlvDate" timestamp without time zone NULL,
        "EndDlvTime" integer NOT NULL,
        "VclPlate" text NULL,
        "ElCoStatus" text NULL,
        "AtDocType" text NULL,
        "ElCoMsg" text NULL,
        "PrintSEPA" text NULL,
        "FreeChrg" numeric NULL,
        "FreeChrgFC" numeric NULL,
        "FreeChrgSC" numeric NULL,
        "NfeValue" numeric NULL,
        "FiscDocNum" text NULL,
        "RelatedTyp" integer NOT NULL,
        "RelatedEnt" integer NOT NULL,
        "CCDEntry" integer NOT NULL,
        "NfePrntFo" integer NOT NULL,
        "ZrdAbs" integer NOT NULL,
        "POSRcptNo" integer NOT NULL,
        "FoCTax" numeric NULL,
        "FoCTaxFC" numeric NULL,
        "FoCTaxSC" numeric NULL,
        "TpCusPres" integer NOT NULL,
        "ExcDocDate" timestamp without time zone NULL,
        "FoCFrght" numeric NULL,
        "FoCFrghtFC" numeric NULL,
        "FoCFrghtSC" numeric NULL,
        "InterimTyp" integer NULL,
        "PTICode" text NULL,
        "Letter" text NULL,
        "FolNumFrom" integer NOT NULL,
        "FolNumTo" integer NOT NULL,
        "FolSeries" integer NOT NULL,
        "SplitTax" numeric NULL,
        "SplitTaxFC" numeric NULL,
        "SplitTaxSC" numeric NULL,
        "ToBinCode" text NULL,
        "PriceMode" text NULL,
        "PoDropPrss" text NULL,
        "PermitNo" text NULL,
        "MYFtype" text NULL,
        "DocTaxID" text NULL,
        "DateReport" timestamp without time zone NULL,
        "RepSection" text NULL,
        "ExclTaxRep" text NULL,
        "PosCashReg" integer NOT NULL,
        "DmpTransID" text NULL,
        "ECommerBP" text NULL,
        "EComerGSTN" text NULL,
        "Revision" text NULL,
        "RevRefNo" text NULL,
        "RevRefDate" timestamp without time zone NULL,
        "RevCreRefN" text NULL,
        "RevCreRefD" timestamp without time zone NULL,
        "TaxInvNo" text NULL,
        "FrmBpDate" timestamp without time zone NULL,
        "GSTTranTyp" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "ComTrade" text NULL,
        "UseBilAddr" text NULL,
        "IssReason" integer NULL,
        "ComTradeRt" text NULL,
        "SplitPmnt" text NULL,
        "SOIWizId" integer NOT NULL,
        "SelfPosted" text NULL,
        "EnBnkAcct" text NULL,
        "EncryptIV" text NULL,
        "DPPStatus" text NULL,
        "SAPPassprt" text NULL,
        "EWBGenType" text NULL,
        "CtActTax" numeric NULL,
        "CtActTaxFC" numeric NULL,
        "CtActTaxSC" numeric NULL,
        "EDocType" text NULL,
        "QRCodeSrc" text NULL,
        "AggregDoc" text NULL,
        "DataVers" integer NOT NULL,
        "ShipState" text NULL,
        "ShipPlace" text NULL,
        "CustOffice" text NULL,
        "FCI" text NULL,
        "NnSbCuAmnt" numeric NULL,
        "NnSbCuSC" numeric NULL,
        "NnSbCuFC" numeric NULL,
        "ExepCuAmnt" numeric NULL,
        "ExepCuSC" numeric NULL,
        "ExepCuFC" numeric NULL,
        "AddLegIn" text NULL,
        "LegTextF" integer NOT NULL,
        "IndFinal" text NULL,
        "DANFELgTxt" text NULL,
        "U_CXS_TRKY" text NULL,
        "U_CXS_TRID" text NULL,
        "U_CXS_FRST" text NULL,
        "U_CXS_FOST" text NULL,
        "U_CXS_STID" text NULL,
        "U_CXS_ACID" text NULL,
        "U_CXS_LYNO" text NULL,
        "U_CXS_LYAY" text NULL,
        "U_CXS_IASO" text NULL,
        "U_CXS_FRIV" text NULL,
        "U_CXS_SNGL" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_CXS_BREF" text NULL,
        "U_CXS_SLEX" text NULL,
        "U_CXS_STSN" text NULL,
        "U_CXS_TST2" text NULL,
        "U_CXS_FMST" text NULL,
        "U_CXS_TOST" text NULL,
        "U_CXS_STRT" text NULL,
        "U_TransType" text NULL,
        "U_CXS_STAS" text NULL,
        "U_CXS_MDFD" text NULL,
        "U_VandorExchange" text NULL,
        "U_Freight" numeric NULL,
        CONSTRAINT "PK_OPOR" PRIMARY KEY ("DocEntry")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."ORIN" (
        "DocEntry" integer NOT NULL,
        "DocNum" integer NOT NULL,
        "DocType" text NULL,
        "CANCELED" text NULL,
        "Handwrtten" text NULL,
        "Printed" text NULL,
        "DocStatus" text NULL,
        "InvntSttus" text NULL,
        "Transfered" text NULL,
        "ObjType" text NULL,
        "DocDate" timestamp without time zone NULL,
        "DocDueDate" timestamp without time zone NULL,
        "CardCode" text NULL,
        "CardName" text NULL,
        "Address" text NULL,
        "NumAtCard" text NULL,
        "VatPercent" numeric NULL,
        "VatSum" numeric NULL,
        "VatSumFC" numeric NULL,
        "DiscPrcnt" numeric NULL,
        "DiscSum" numeric NULL,
        "DiscSumFC" numeric NULL,
        "DocCur" text NULL,
        "DocRate" numeric NULL,
        "DocTotal" numeric NULL,
        "DocTotalFC" numeric NULL,
        "PaidToDate" numeric NULL,
        "PaidFC" numeric NULL,
        "GrosProfit" numeric NULL,
        "GrosProfFC" numeric NULL,
        "Ref1" text NULL,
        "Ref2" text NULL,
        "Comments" text NULL,
        "JrnlMemo" text NULL,
        "TransId" integer NOT NULL,
        "ReceiptNum" integer NOT NULL,
        "GroupNum" integer NULL,
        "DocTime" integer NULL,
        "SlpCode" integer NOT NULL,
        "TrnspCode" integer NULL,
        "PartSupply" text NULL,
        "Confirmed" text NULL,
        "GrossBase" integer NULL,
        "ImportEnt" integer NOT NULL,
        "CreateTran" text NULL,
        "SummryType" text NULL,
        "UpdInvnt" text NULL,
        "UpdCardBal" text NULL,
        "Instance" integer NULL,
        "Flags" integer NOT NULL,
        "InvntDirec" text NULL,
        "CntctCode" integer NOT NULL,
        "ShowSCN" text NULL,
        "FatherCard" text NULL,
        "SysRate" numeric NULL,
        "CurSource" text NULL,
        "VatSumSy" numeric NULL,
        "DiscSumSy" numeric NULL,
        "DocTotalSy" numeric NULL,
        "PaidSys" numeric NULL,
        "FatherType" text NULL,
        "GrosProfSy" numeric NULL,
        "UpdateDate" timestamp without time zone NULL,
        "IsICT" text NULL,
        "CreateDate" timestamp without time zone NULL,
        "Volume" numeric NULL,
        "VolUnit" integer NULL,
        "Weight" numeric NULL,
        "WeightUnit" integer NULL,
        "Series" integer NOT NULL,
        "TaxDate" timestamp without time zone NULL,
        "Filler" text NULL,
        "DataSource" text NULL,
        "StampNum" text NULL,
        "isCrin" text NULL,
        "FinncPriod" integer NOT NULL,
        "UserSign" integer NULL,
        "selfInv" text NULL,
        "VatPaid" numeric NULL,
        "VatPaidFC" numeric NULL,
        "VatPaidSys" numeric NULL,
        "UserSign2" integer NULL,
        "WddStatus" text NULL,
        "draftKey" integer NOT NULL,
        "TotalExpns" numeric NULL,
        "TotalExpFC" numeric NULL,
        "TotalExpSC" numeric NULL,
        "DunnLevel" integer NOT NULL,
        "Address2" text NULL,
        "LogInstanc" integer NOT NULL,
        "Exported" text NULL,
        "StationID" integer NOT NULL,
        "Indicator" text NULL,
        "NetProc" text NULL,
        "AqcsTax" numeric NULL,
        "AqcsTaxFC" numeric NULL,
        "AqcsTaxSC" numeric NULL,
        "CashDiscPr" numeric NULL,
        "CashDiscnt" numeric NULL,
        "CashDiscFC" numeric NULL,
        "CashDiscSC" numeric NULL,
        "ShipToCode" text NULL,
        "LicTradNum" text NULL,
        "PaymentRef" text NULL,
        "WTSum" numeric NULL,
        "WTSumFC" numeric NULL,
        "WTSumSC" numeric NULL,
        "RoundDif" numeric NULL,
        "RoundDifFC" numeric NULL,
        "RoundDifSy" numeric NULL,
        "CheckDigit" text NULL,
        "Form1099" integer NOT NULL,
        "Box1099" text NULL,
        submitted text NULL,
        "PoPrss" text NULL,
        "Rounding" text NULL,
        "RevisionPo" text NULL,
        "Segment" integer NULL,
        "ReqDate" timestamp without time zone NULL,
        "CancelDate" timestamp without time zone NULL,
        "PickStatus" text NULL,
        "Pick" text NULL,
        "BlockDunn" text NULL,
        "PeyMethod" text NULL,
        "PayBlock" text NULL,
        "PayBlckRef" integer NOT NULL,
        "MaxDscn" text NULL,
        "Reserve" text NULL,
        "Max1099" numeric NULL,
        "CntrlBnk" text NULL,
        "PickRmrk" text NULL,
        "ISRCodLine" text NULL,
        "ExpAppl" numeric NULL,
        "ExpApplFC" numeric NULL,
        "ExpApplSC" numeric NULL,
        "Project" text NULL,
        "DeferrTax" text NULL,
        "LetterNum" text NULL,
        "FromDate" timestamp without time zone NULL,
        "ToDate" timestamp without time zone NULL,
        "WTApplied" numeric NULL,
        "WTAppliedF" numeric NULL,
        "BoeReserev" text NULL,
        "AgentCode" text NULL,
        "WTAppliedS" numeric NULL,
        "EquVatSum" numeric NULL,
        "EquVatSumF" numeric NULL,
        "EquVatSumS" numeric NULL,
        "Installmnt" integer NULL,
        "VATFirst" text NULL,
        "NnSbAmnt" numeric NULL,
        "NnSbAmntSC" numeric NULL,
        "NbSbAmntFC" numeric NULL,
        "ExepAmnt" numeric NULL,
        "ExepAmntSC" numeric NULL,
        "ExepAmntFC" numeric NULL,
        "VatDate" timestamp without time zone NULL,
        "CorrExt" text NULL,
        "CorrInv" integer NOT NULL,
        "NCorrInv" integer NOT NULL,
        "CEECFlag" text NULL,
        "BaseAmnt" numeric NULL,
        "BaseAmntSC" numeric NULL,
        "BaseAmntFC" numeric NULL,
        "CtlAccount" text NULL,
        "BPLId" integer NOT NULL,
        "BPLName" text NULL,
        "VATRegNum" text NULL,
        "TxInvRptNo" text NULL,
        "TxInvRptDt" timestamp without time zone NULL,
        "KVVATCode" text NULL,
        "WTDetails" text NULL,
        "SumAbsId" integer NOT NULL,
        "SumRptDate" timestamp without time zone NULL,
        "PIndicator" text NULL,
        "ManualNum" text NULL,
        "UseShpdGd" text NULL,
        "BaseVtAt" numeric NULL,
        "BaseVtAtSC" numeric NULL,
        "BaseVtAtFC" numeric NULL,
        "NnSbVAt" numeric NULL,
        "NnSbVAtSC" numeric NULL,
        "NbSbVAtFC" numeric NULL,
        "ExptVAt" numeric NULL,
        "ExptVAtSC" numeric NULL,
        "ExptVAtFC" numeric NULL,
        "LYPmtAt" numeric NULL,
        "LYPmtAtSC" numeric NULL,
        "LYPmtAtFC" numeric NULL,
        "ExpAnSum" numeric NULL,
        "ExpAnSys" numeric NULL,
        "ExpAnFrgn" numeric NULL,
        "DocSubType" text NULL,
        "DpmStatus" text NULL,
        "DpmAmnt" numeric NULL,
        "DpmAmntSC" numeric NULL,
        "DpmAmntFC" numeric NULL,
        "DpmDrawn" text NULL,
        "DpmPrcnt" numeric NULL,
        "PaidSum" numeric NULL,
        "PaidSumFc" numeric NULL,
        "PaidSumSc" numeric NULL,
        "FolioPref" text NULL,
        "FolioNum" integer NOT NULL,
        "DpmAppl" numeric NULL,
        "DpmApplFc" numeric NULL,
        "DpmApplSc" numeric NULL,
        "LPgFolioN" integer NOT NULL,
        "Header" text NULL,
        "Footer" text NULL,
        "Posted" text NULL,
        "OwnerCode" integer NOT NULL,
        "BPChCode" text NULL,
        "BPChCntc" integer NOT NULL,
        "PayToCode" text NULL,
        "IsPaytoBnk" text NULL,
        "BnkCntry" text NULL,
        "BankCode" text NULL,
        "BnkAccount" text NULL,
        "BnkBranch" text NULL,
        "isIns" text NULL,
        "TrackNo" text NULL,
        "VersionNum" text NULL,
        "LangCode" integer NOT NULL,
        "BPNameOW" text NULL,
        "BillToOW" text NULL,
        "ShipToOW" text NULL,
        "RetInvoice" text NULL,
        "ClsDate" timestamp without time zone NULL,
        "MInvNum" integer NOT NULL,
        "MInvDate" timestamp without time zone NULL,
        "SeqCode" integer NULL,
        "Serial" integer NOT NULL,
        "SeriesStr" text NULL,
        "SubStr" text NULL,
        "Model" text NULL,
        "TaxOnExp" numeric NULL,
        "TaxOnExpFc" numeric NULL,
        "TaxOnExpSc" numeric NULL,
        "TaxOnExAp" numeric NULL,
        "TaxOnExApF" numeric NULL,
        "TaxOnExApS" numeric NULL,
        "LastPmnTyp" text NULL,
        "LndCstNum" integer NOT NULL,
        "UseCorrVat" text NULL,
        "BlkCredMmo" text NULL,
        "OpenForLaC" text NULL,
        "Excised" text NULL,
        "ExcRefDate" timestamp without time zone NULL,
        "ExcRmvTime" text NULL,
        "SrvGpPrcnt" numeric NULL,
        "DepositNum" integer NOT NULL,
        "CertNum" text NULL,
        "DutyStatus" text NULL,
        "AutoCrtFlw" text NULL,
        "FlwRefDate" timestamp without time zone NULL,
        "FlwRefNum" text NULL,
        "VatJENum" integer NOT NULL,
        "DpmVat" numeric NULL,
        "DpmVatFc" numeric NULL,
        "DpmVatSc" numeric NULL,
        "DpmAppVat" numeric NULL,
        "DpmAppVatF" numeric NULL,
        "DpmAppVatS" numeric NULL,
        "InsurOp347" text NULL,
        "IgnRelDoc" text NULL,
        "BuildDesc" text NULL,
        "ResidenNum" text NULL,
        "Checker" integer NOT NULL,
        "Payee" integer NOT NULL,
        "CopyNumber" integer NOT NULL,
        "SSIExmpt" text NULL,
        "PQTGrpSer" integer NOT NULL,
        "PQTGrpNum" integer NOT NULL,
        "PQTGrpHW" text NULL,
        "ReopOriDoc" text NULL,
        "ReopManCls" text NULL,
        "DocManClsd" text NULL,
        "ClosingOpt" integer NULL,
        "SpecDate" timestamp without time zone NULL,
        "Ordered" text NULL,
        "NTSApprov" text NULL,
        "NTSWebSite" integer NULL,
        "NTSeTaxNo" text NULL,
        "NTSApprNo" text NULL,
        "PayDuMonth" text NULL,
        "ExtraMonth" integer NULL,
        "ExtraDays" integer NULL,
        "CdcOffset" integer NULL,
        "SignMsg" text NULL,
        "SignDigest" text NULL,
        "CertifNum" text NULL,
        "KeyVersion" integer NOT NULL,
        "EDocGenTyp" text NULL,
        "ESeries" integer NULL,
        "EDocNum" text NULL,
        "EDocExpFrm" integer NOT NULL,
        "OnlineQuo" text NULL,
        "POSEqNum" text NULL,
        "POSManufSN" text NULL,
        "POSCashN" integer NOT NULL,
        "EDocStatus" text NULL,
        "EDocCntnt" text NULL,
        "EDocProces" text NULL,
        "EDocErrCod" text NULL,
        "EDocErrMsg" text NULL,
        "EDocCancel" text NULL,
        "EDocTest" text NULL,
        "EDocPrefix" text NULL,
        "CUP" integer NOT NULL,
        "CIG" integer NOT NULL,
        "DpmAsDscnt" text NULL,
        "Attachment" text NULL,
        "AtcEntry" integer NOT NULL,
        "SupplCode" text NULL,
        "GTSRlvnt" text NULL,
        "BaseDisc" numeric NULL,
        "BaseDiscSc" numeric NULL,
        "BaseDiscFc" numeric NULL,
        "BaseDiscPr" numeric NULL,
        "CreateTS" integer NOT NULL,
        "UpdateTS" integer NOT NULL,
        "SrvTaxRule" text NULL,
        "AnnInvDecR" integer NOT NULL,
        "Supplier" text NULL,
        "Releaser" integer NOT NULL,
        "Receiver" integer NOT NULL,
        "ToWhsCode" text NULL,
        "AssetDate" timestamp without time zone NULL,
        "Requester" text NULL,
        "ReqName" text NULL,
        "Branch" integer NULL,
        "Department" integer NULL,
        "Email" text NULL,
        "Notify" text NULL,
        "ReqType" integer NOT NULL,
        "OriginType" text NULL,
        "IsReuseNum" text NULL,
        "IsReuseNFN" text NULL,
        "DocDlvry" text NULL,
        "PaidDpm" numeric NULL,
        "PaidDpmF" numeric NULL,
        "PaidDpmS" numeric NULL,
        "EnvTypeNFe" integer NOT NULL,
        "AgrNo" integer NOT NULL,
        "IsAlt" text NULL,
        "AltBaseTyp" integer NOT NULL,
        "AltBaseEnt" integer NOT NULL,
        "AuthCode" text NULL,
        "StDlvDate" timestamp without time zone NULL,
        "StDlvTime" integer NOT NULL,
        "EndDlvDate" timestamp without time zone NULL,
        "EndDlvTime" integer NOT NULL,
        "VclPlate" text NULL,
        "ElCoStatus" text NULL,
        "AtDocType" text NULL,
        "ElCoMsg" text NULL,
        "PrintSEPA" text NULL,
        "FreeChrg" numeric NULL,
        "FreeChrgFC" numeric NULL,
        "FreeChrgSC" numeric NULL,
        "NfeValue" numeric NULL,
        "FiscDocNum" text NULL,
        "RelatedTyp" integer NOT NULL,
        "RelatedEnt" integer NOT NULL,
        "CCDEntry" integer NOT NULL,
        "NfePrntFo" integer NOT NULL,
        "ZrdAbs" integer NOT NULL,
        "POSRcptNo" integer NOT NULL,
        "FoCTax" numeric NULL,
        "FoCTaxFC" numeric NULL,
        "FoCTaxSC" numeric NULL,
        "TpCusPres" integer NOT NULL,
        "ExcDocDate" timestamp without time zone NULL,
        "FoCFrght" numeric NULL,
        "FoCFrghtFC" numeric NULL,
        "FoCFrghtSC" numeric NULL,
        "InterimTyp" integer NULL,
        "PTICode" text NULL,
        "Letter" text NULL,
        "FolNumFrom" integer NOT NULL,
        "FolNumTo" integer NOT NULL,
        "FolSeries" integer NOT NULL,
        "SplitTax" numeric NULL,
        "SplitTaxFC" numeric NULL,
        "SplitTaxSC" numeric NULL,
        "ToBinCode" text NULL,
        "PriceMode" text NULL,
        "PoDropPrss" text NULL,
        "PermitNo" text NULL,
        "MYFtype" text NULL,
        "DocTaxID" text NULL,
        "DateReport" timestamp without time zone NULL,
        "RepSection" text NULL,
        "ExclTaxRep" text NULL,
        "PosCashReg" integer NOT NULL,
        "DmpTransID" text NULL,
        "ECommerBP" text NULL,
        "EComerGSTN" text NULL,
        "Revision" text NULL,
        "RevRefNo" text NULL,
        "RevRefDate" timestamp without time zone NULL,
        "RevCreRefN" text NULL,
        "RevCreRefD" timestamp without time zone NULL,
        "TaxInvNo" text NULL,
        "FrmBpDate" timestamp without time zone NULL,
        "GSTTranTyp" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "ComTrade" text NULL,
        "UseBilAddr" text NULL,
        "IssReason" integer NULL,
        "ComTradeRt" text NULL,
        "SplitPmnt" text NULL,
        "SOIWizId" integer NOT NULL,
        "SelfPosted" text NULL,
        "EnBnkAcct" text NULL,
        "EncryptIV" text NULL,
        "DPPStatus" text NULL,
        "SAPPassprt" text NULL,
        "EWBGenType" text NULL,
        "CtActTax" numeric NULL,
        "CtActTaxFC" numeric NULL,
        "CtActTaxSC" numeric NULL,
        "EDocType" text NULL,
        "QRCodeSrc" text NULL,
        "AggregDoc" text NULL,
        "DataVers" integer NOT NULL,
        "ShipState" text NULL,
        "ShipPlace" text NULL,
        "CustOffice" text NULL,
        "FCI" text NULL,
        "NnSbCuAmnt" numeric NULL,
        "NnSbCuSC" numeric NULL,
        "NnSbCuFC" numeric NULL,
        "ExepCuAmnt" numeric NULL,
        "ExepCuSC" numeric NULL,
        "ExepCuFC" numeric NULL,
        "AddLegIn" text NULL,
        "LegTextF" integer NOT NULL,
        "IndFinal" text NULL,
        "DANFELgTxt" text NULL,
        "U_CXS_TRKY" text NULL,
        "U_CXS_TRID" text NULL,
        "U_CXS_FRST" text NULL,
        "U_CXS_FOST" text NULL,
        "U_CXS_STID" text NULL,
        "U_CXS_ACID" text NULL,
        "U_CXS_LYNO" text NULL,
        "U_CXS_LYAY" text NULL,
        "U_CXS_IASO" text NULL,
        "U_CXS_FRIV" text NULL,
        "U_CXS_SNGL" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_CXS_BREF" text NULL,
        "U_CXS_SLEX" text NULL,
        "U_CXS_STSN" text NULL,
        "U_CXS_TST2" text NULL,
        "U_CXS_FMST" text NULL,
        "U_CXS_TOST" text NULL,
        "U_CXS_STRT" text NULL,
        "U_TransType" text NULL,
        "U_CXS_STAS" text NULL,
        "U_CXS_MDFD" text NULL,
        "U_VandorExchange" text NULL,
        "U_Freight" numeric NULL,
        CONSTRAINT "PK_ORIN" PRIMARY KEY ("DocEntry")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."ORPD" (
        "DocEntry" integer NOT NULL,
        "DocNum" integer NOT NULL,
        "DocType" text NULL,
        "CANCELED" text NULL,
        "Handwrtten" text NULL,
        "Printed" text NULL,
        "DocStatus" text NULL,
        "InvntSttus" text NULL,
        "Transfered" text NULL,
        "ObjType" text NULL,
        "DocDate" timestamp without time zone NULL,
        "DocDueDate" timestamp without time zone NULL,
        "CardCode" text NULL,
        "CardName" text NULL,
        "Address" text NULL,
        "NumAtCard" text NULL,
        "VatPercent" numeric NULL,
        "VatSum" numeric NULL,
        "VatSumFC" numeric NULL,
        "DiscPrcnt" numeric NULL,
        "DiscSum" numeric NULL,
        "DiscSumFC" numeric NULL,
        "DocCur" text NULL,
        "DocRate" numeric NULL,
        "DocTotal" numeric NULL,
        "DocTotalFC" numeric NULL,
        "PaidToDate" numeric NULL,
        "PaidFC" numeric NULL,
        "GrosProfit" numeric NULL,
        "GrosProfFC" numeric NULL,
        "Ref1" text NULL,
        "Ref2" text NULL,
        "Comments" text NULL,
        "JrnlMemo" text NULL,
        "TransId" integer NOT NULL,
        "ReceiptNum" integer NOT NULL,
        "GroupNum" integer NULL,
        "DocTime" integer NULL,
        "SlpCode" integer NOT NULL,
        "TrnspCode" integer NULL,
        "PartSupply" text NULL,
        "Confirmed" text NULL,
        "GrossBase" integer NULL,
        "ImportEnt" integer NOT NULL,
        "CreateTran" text NULL,
        "SummryType" text NULL,
        "UpdInvnt" text NULL,
        "UpdCardBal" text NULL,
        "Instance" integer NULL,
        "Flags" integer NOT NULL,
        "InvntDirec" text NULL,
        "CntctCode" integer NOT NULL,
        "ShowSCN" text NULL,
        "FatherCard" text NULL,
        "SysRate" numeric NULL,
        "CurSource" text NULL,
        "VatSumSy" numeric NULL,
        "DiscSumSy" numeric NULL,
        "DocTotalSy" numeric NULL,
        "PaidSys" numeric NULL,
        "FatherType" text NULL,
        "GrosProfSy" numeric NULL,
        "UpdateDate" timestamp without time zone NULL,
        "IsICT" text NULL,
        "CreateDate" timestamp without time zone NULL,
        "Volume" numeric NULL,
        "VolUnit" integer NULL,
        "Weight" numeric NULL,
        "WeightUnit" integer NULL,
        "Series" integer NOT NULL,
        "TaxDate" timestamp without time zone NULL,
        "Filler" text NULL,
        "DataSource" text NULL,
        "StampNum" text NULL,
        "isCrin" text NULL,
        "FinncPriod" integer NOT NULL,
        "UserSign" integer NULL,
        "selfInv" text NULL,
        "VatPaid" numeric NULL,
        "VatPaidFC" numeric NULL,
        "VatPaidSys" numeric NULL,
        "UserSign2" integer NULL,
        "WddStatus" text NULL,
        "draftKey" integer NOT NULL,
        "TotalExpns" numeric NULL,
        "TotalExpFC" numeric NULL,
        "TotalExpSC" numeric NULL,
        "DunnLevel" integer NOT NULL,
        "Address2" text NULL,
        "LogInstanc" integer NOT NULL,
        "Exported" text NULL,
        "StationID" integer NOT NULL,
        "Indicator" text NULL,
        "NetProc" text NULL,
        "AqcsTax" numeric NULL,
        "AqcsTaxFC" numeric NULL,
        "AqcsTaxSC" numeric NULL,
        "CashDiscPr" numeric NULL,
        "CashDiscnt" numeric NULL,
        "CashDiscFC" numeric NULL,
        "CashDiscSC" numeric NULL,
        "ShipToCode" text NULL,
        "LicTradNum" text NULL,
        "PaymentRef" text NULL,
        "WTSum" numeric NULL,
        "WTSumFC" numeric NULL,
        "WTSumSC" numeric NULL,
        "RoundDif" numeric NULL,
        "RoundDifFC" numeric NULL,
        "RoundDifSy" numeric NULL,
        "CheckDigit" text NULL,
        "Form1099" integer NOT NULL,
        "Box1099" text NULL,
        submitted text NULL,
        "PoPrss" text NULL,
        "Rounding" text NULL,
        "RevisionPo" text NULL,
        "Segment" integer NULL,
        "ReqDate" timestamp without time zone NULL,
        "CancelDate" timestamp without time zone NULL,
        "PickStatus" text NULL,
        "Pick" text NULL,
        "BlockDunn" text NULL,
        "PeyMethod" text NULL,
        "PayBlock" text NULL,
        "PayBlckRef" integer NOT NULL,
        "MaxDscn" text NULL,
        "Reserve" text NULL,
        "Max1099" numeric NULL,
        "CntrlBnk" text NULL,
        "PickRmrk" text NULL,
        "ISRCodLine" text NULL,
        "ExpAppl" numeric NULL,
        "ExpApplFC" numeric NULL,
        "ExpApplSC" numeric NULL,
        "Project" text NULL,
        "DeferrTax" text NULL,
        "LetterNum" text NULL,
        "FromDate" timestamp without time zone NULL,
        "ToDate" timestamp without time zone NULL,
        "WTApplied" numeric NULL,
        "WTAppliedF" numeric NULL,
        "BoeReserev" text NULL,
        "AgentCode" text NULL,
        "WTAppliedS" numeric NULL,
        "EquVatSum" numeric NULL,
        "EquVatSumF" numeric NULL,
        "EquVatSumS" numeric NULL,
        "Installmnt" integer NULL,
        "VATFirst" text NULL,
        "NnSbAmnt" numeric NULL,
        "NnSbAmntSC" numeric NULL,
        "NbSbAmntFC" numeric NULL,
        "ExepAmnt" numeric NULL,
        "ExepAmntSC" numeric NULL,
        "ExepAmntFC" numeric NULL,
        "VatDate" timestamp without time zone NULL,
        "CorrExt" text NULL,
        "CorrInv" integer NOT NULL,
        "NCorrInv" integer NOT NULL,
        "CEECFlag" text NULL,
        "BaseAmnt" numeric NULL,
        "BaseAmntSC" numeric NULL,
        "BaseAmntFC" numeric NULL,
        "CtlAccount" text NULL,
        "BPLId" integer NOT NULL,
        "BPLName" text NULL,
        "VATRegNum" text NULL,
        "TxInvRptNo" text NULL,
        "TxInvRptDt" timestamp without time zone NULL,
        "KVVATCode" text NULL,
        "WTDetails" text NULL,
        "SumAbsId" integer NOT NULL,
        "SumRptDate" timestamp without time zone NULL,
        "PIndicator" text NULL,
        "ManualNum" text NULL,
        "UseShpdGd" text NULL,
        "BaseVtAt" numeric NULL,
        "BaseVtAtSC" numeric NULL,
        "BaseVtAtFC" numeric NULL,
        "NnSbVAt" numeric NULL,
        "NnSbVAtSC" numeric NULL,
        "NbSbVAtFC" numeric NULL,
        "ExptVAt" numeric NULL,
        "ExptVAtSC" numeric NULL,
        "ExptVAtFC" numeric NULL,
        "LYPmtAt" numeric NULL,
        "LYPmtAtSC" numeric NULL,
        "LYPmtAtFC" numeric NULL,
        "ExpAnSum" numeric NULL,
        "ExpAnSys" numeric NULL,
        "ExpAnFrgn" numeric NULL,
        "DocSubType" text NULL,
        "DpmStatus" text NULL,
        "DpmAmnt" numeric NULL,
        "DpmAmntSC" numeric NULL,
        "DpmAmntFC" numeric NULL,
        "DpmDrawn" text NULL,
        "DpmPrcnt" numeric NULL,
        "PaidSum" numeric NULL,
        "PaidSumFc" numeric NULL,
        "PaidSumSc" numeric NULL,
        "FolioPref" text NULL,
        "FolioNum" integer NOT NULL,
        "DpmAppl" numeric NULL,
        "DpmApplFc" numeric NULL,
        "DpmApplSc" numeric NULL,
        "LPgFolioN" integer NOT NULL,
        "Header" text NULL,
        "Footer" text NULL,
        "Posted" text NULL,
        "OwnerCode" integer NOT NULL,
        "BPChCode" text NULL,
        "BPChCntc" integer NOT NULL,
        "PayToCode" text NULL,
        "IsPaytoBnk" text NULL,
        "BnkCntry" text NULL,
        "BankCode" text NULL,
        "BnkAccount" text NULL,
        "BnkBranch" text NULL,
        "isIns" text NULL,
        "TrackNo" text NULL,
        "VersionNum" text NULL,
        "LangCode" integer NOT NULL,
        "BPNameOW" text NULL,
        "BillToOW" text NULL,
        "ShipToOW" text NULL,
        "RetInvoice" text NULL,
        "ClsDate" timestamp without time zone NULL,
        "MInvNum" integer NOT NULL,
        "MInvDate" timestamp without time zone NULL,
        "SeqCode" integer NULL,
        "Serial" integer NOT NULL,
        "SeriesStr" text NULL,
        "SubStr" text NULL,
        "Model" text NULL,
        "TaxOnExp" numeric NULL,
        "TaxOnExpFc" numeric NULL,
        "TaxOnExpSc" numeric NULL,
        "TaxOnExAp" numeric NULL,
        "TaxOnExApF" numeric NULL,
        "TaxOnExApS" numeric NULL,
        "LastPmnTyp" text NULL,
        "LndCstNum" integer NOT NULL,
        "UseCorrVat" text NULL,
        "BlkCredMmo" text NULL,
        "OpenForLaC" text NULL,
        "Excised" text NULL,
        "ExcRefDate" timestamp without time zone NULL,
        "ExcRmvTime" text NULL,
        "SrvGpPrcnt" numeric NULL,
        "DepositNum" integer NOT NULL,
        "CertNum" text NULL,
        "DutyStatus" text NULL,
        "AutoCrtFlw" text NULL,
        "FlwRefDate" timestamp without time zone NULL,
        "FlwRefNum" text NULL,
        "VatJENum" integer NOT NULL,
        "DpmVat" numeric NULL,
        "DpmVatFc" numeric NULL,
        "DpmVatSc" numeric NULL,
        "DpmAppVat" numeric NULL,
        "DpmAppVatF" numeric NULL,
        "DpmAppVatS" numeric NULL,
        "InsurOp347" text NULL,
        "IgnRelDoc" text NULL,
        "BuildDesc" text NULL,
        "ResidenNum" text NULL,
        "Checker" integer NOT NULL,
        "Payee" integer NOT NULL,
        "CopyNumber" integer NOT NULL,
        "SSIExmpt" text NULL,
        "PQTGrpSer" integer NOT NULL,
        "PQTGrpNum" integer NOT NULL,
        "PQTGrpHW" text NULL,
        "ReopOriDoc" text NULL,
        "ReopManCls" text NULL,
        "DocManClsd" text NULL,
        "ClosingOpt" integer NULL,
        "SpecDate" timestamp without time zone NULL,
        "Ordered" text NULL,
        "NTSApprov" text NULL,
        "NTSWebSite" integer NULL,
        "NTSeTaxNo" text NULL,
        "NTSApprNo" text NULL,
        "PayDuMonth" text NULL,
        "ExtraMonth" integer NULL,
        "ExtraDays" integer NULL,
        "CdcOffset" integer NULL,
        "SignMsg" text NULL,
        "SignDigest" text NULL,
        "CertifNum" text NULL,
        "KeyVersion" integer NOT NULL,
        "EDocGenTyp" text NULL,
        "ESeries" integer NULL,
        "EDocNum" text NULL,
        "EDocExpFrm" integer NOT NULL,
        "OnlineQuo" text NULL,
        "POSEqNum" text NULL,
        "POSManufSN" text NULL,
        "POSCashN" integer NOT NULL,
        "EDocStatus" text NULL,
        "EDocCntnt" text NULL,
        "EDocProces" text NULL,
        "EDocErrCod" text NULL,
        "EDocErrMsg" text NULL,
        "EDocCancel" text NULL,
        "EDocTest" text NULL,
        "EDocPrefix" text NULL,
        "CUP" integer NOT NULL,
        "CIG" integer NOT NULL,
        "DpmAsDscnt" text NULL,
        "Attachment" text NULL,
        "AtcEntry" integer NOT NULL,
        "SupplCode" text NULL,
        "GTSRlvnt" text NULL,
        "BaseDisc" numeric NULL,
        "BaseDiscSc" numeric NULL,
        "BaseDiscFc" numeric NULL,
        "BaseDiscPr" numeric NULL,
        "CreateTS" integer NOT NULL,
        "UpdateTS" integer NOT NULL,
        "SrvTaxRule" text NULL,
        "AnnInvDecR" integer NOT NULL,
        "Supplier" text NULL,
        "Releaser" integer NOT NULL,
        "Receiver" integer NOT NULL,
        "ToWhsCode" text NULL,
        "AssetDate" timestamp without time zone NULL,
        "Requester" text NULL,
        "ReqName" text NULL,
        "Branch" integer NULL,
        "Department" integer NULL,
        "Email" text NULL,
        "Notify" text NULL,
        "ReqType" integer NOT NULL,
        "OriginType" text NULL,
        "IsReuseNum" text NULL,
        "IsReuseNFN" text NULL,
        "DocDlvry" text NULL,
        "PaidDpm" numeric NULL,
        "PaidDpmF" numeric NULL,
        "PaidDpmS" numeric NULL,
        "EnvTypeNFe" integer NOT NULL,
        "AgrNo" integer NOT NULL,
        "IsAlt" text NULL,
        "AltBaseTyp" integer NOT NULL,
        "AltBaseEnt" integer NOT NULL,
        "AuthCode" text NULL,
        "StDlvDate" timestamp without time zone NULL,
        "StDlvTime" integer NOT NULL,
        "EndDlvDate" timestamp without time zone NULL,
        "EndDlvTime" integer NOT NULL,
        "VclPlate" text NULL,
        "ElCoStatus" text NULL,
        "AtDocType" text NULL,
        "ElCoMsg" text NULL,
        "PrintSEPA" text NULL,
        "FreeChrg" numeric NULL,
        "FreeChrgFC" numeric NULL,
        "FreeChrgSC" numeric NULL,
        "NfeValue" numeric NULL,
        "FiscDocNum" text NULL,
        "RelatedTyp" integer NOT NULL,
        "RelatedEnt" integer NOT NULL,
        "CCDEntry" integer NOT NULL,
        "NfePrntFo" integer NOT NULL,
        "ZrdAbs" integer NOT NULL,
        "POSRcptNo" integer NOT NULL,
        "FoCTax" numeric NULL,
        "FoCTaxFC" numeric NULL,
        "FoCTaxSC" numeric NULL,
        "TpCusPres" integer NOT NULL,
        "ExcDocDate" timestamp without time zone NULL,
        "FoCFrght" numeric NULL,
        "FoCFrghtFC" numeric NULL,
        "FoCFrghtSC" numeric NULL,
        "InterimTyp" integer NULL,
        "PTICode" text NULL,
        "Letter" text NULL,
        "FolNumFrom" integer NOT NULL,
        "FolNumTo" integer NOT NULL,
        "FolSeries" integer NOT NULL,
        "SplitTax" numeric NULL,
        "SplitTaxFC" numeric NULL,
        "SplitTaxSC" numeric NULL,
        "ToBinCode" text NULL,
        "PriceMode" text NULL,
        "PoDropPrss" text NULL,
        "PermitNo" text NULL,
        "MYFtype" text NULL,
        "DocTaxID" text NULL,
        "DateReport" timestamp without time zone NULL,
        "RepSection" text NULL,
        "ExclTaxRep" text NULL,
        "PosCashReg" integer NOT NULL,
        "DmpTransID" text NULL,
        "ECommerBP" text NULL,
        "EComerGSTN" text NULL,
        "Revision" text NULL,
        "RevRefNo" text NULL,
        "RevRefDate" timestamp without time zone NULL,
        "RevCreRefN" text NULL,
        "RevCreRefD" timestamp without time zone NULL,
        "TaxInvNo" text NULL,
        "FrmBpDate" timestamp without time zone NULL,
        "GSTTranTyp" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "ComTrade" text NULL,
        "UseBilAddr" text NULL,
        "IssReason" integer NULL,
        "ComTradeRt" text NULL,
        "SplitPmnt" text NULL,
        "SOIWizId" integer NOT NULL,
        "SelfPosted" text NULL,
        "EnBnkAcct" text NULL,
        "EncryptIV" text NULL,
        "DPPStatus" text NULL,
        "SAPPassprt" text NULL,
        "EWBGenType" text NULL,
        "CtActTax" numeric NULL,
        "CtActTaxFC" numeric NULL,
        "CtActTaxSC" numeric NULL,
        "EDocType" text NULL,
        "QRCodeSrc" text NULL,
        "AggregDoc" text NULL,
        "DataVers" integer NOT NULL,
        "ShipState" text NULL,
        "ShipPlace" text NULL,
        "CustOffice" text NULL,
        "FCI" text NULL,
        "NnSbCuAmnt" numeric NULL,
        "NnSbCuSC" numeric NULL,
        "NnSbCuFC" numeric NULL,
        "ExepCuAmnt" numeric NULL,
        "ExepCuSC" numeric NULL,
        "ExepCuFC" numeric NULL,
        "AddLegIn" text NULL,
        "LegTextF" integer NOT NULL,
        "IndFinal" text NULL,
        "DANFELgTxt" text NULL,
        "U_CXS_TRKY" text NULL,
        "U_CXS_TRID" text NULL,
        "U_CXS_FRST" text NULL,
        "U_CXS_FOST" text NULL,
        "U_CXS_STID" text NULL,
        "U_CXS_ACID" text NULL,
        "U_CXS_LYNO" text NULL,
        "U_CXS_LYAY" text NULL,
        "U_CXS_IASO" text NULL,
        "U_CXS_FRIV" text NULL,
        "U_CXS_SNGL" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_CXS_BREF" text NULL,
        "U_CXS_SLEX" text NULL,
        "U_CXS_STSN" text NULL,
        "U_CXS_TST2" text NULL,
        "U_CXS_FMST" text NULL,
        "U_CXS_TOST" text NULL,
        "U_CXS_STRT" text NULL,
        "U_TransType" text NULL,
        "U_CXS_STAS" text NULL,
        "U_CXS_MDFD" text NULL,
        "U_VandorExchange" text NULL,
        "U_Freight" numeric NULL,
        CONSTRAINT "PK_ORPD" PRIMARY KEY ("DocEntry")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OUGP" (
        "UgpEntry" integer NOT NULL,
        "UgpCode" text NULL,
        "UgpName" text NULL,
        "BaseUom" integer NULL,
        "DataSource" text NULL,
        "UserSign" smallint NOT NULL,
        "LogInstanc" integer NOT NULL,
        "UserSign2" smallint NOT NULL,
        "UpdateDate" timestamp without time zone NULL,
        "CreateDate" timestamp without time zone NULL,
        "Locked" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OUOM" (
        "UomEntry" integer NOT NULL,
        "UomCode" text NULL,
        "UomName" text NULL,
        "Locked" text NULL,
        "DataSource" text NULL,
        "UserSign" smallint NOT NULL,
        "LogInstanc" smallint NOT NULL,
        "UserSign2" smallint NOT NULL,
        "UpdateDate" timestamp without time zone NOT NULL,
        "CreateDate" timestamp without time zone NOT NULL,
        "Length1" numeric NOT NULL,
        "Len1Unit" smallint NOT NULL,
        length2 numeric NOT NULL,
        "Len2Unit" smallint NOT NULL,
        "Width1" numeric NOT NULL,
        "Wdth1Unit" smallint NOT NULL,
        "Width2" numeric NOT NULL,
        "Wdth2Unit" smallint NOT NULL,
        "Height1" numeric NOT NULL,
        "Hght1Unit" smallint NOT NULL,
        "Height2" numeric NOT NULL,
        "Hght2Unit" smallint NOT NULL,
        "Volume" numeric NOT NULL,
        "VolUnit" smallint NOT NULL,
        "Weight1" numeric NOT NULL,
        "WghtUnit" smallint NOT NULL,
        "Weight2" numeric NOT NULL,
        "Wght2Unit" smallint NOT NULL,
        "IntSymbol" text NULL,
        "EwbUnit" integer NOT NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OWHS" (
        "WhsCode" text NULL,
        "WhsName" text NULL,
        "IntrnalKey" integer NOT NULL,
        "Grp_Code" text NULL,
        "BalInvntAc" text NULL,
        "SaleCostAc" text NULL,
        "TransferAc" text NULL,
        "Locked" text NULL,
        "DataSource" text NULL,
        "UserSign" smallint NOT NULL,
        "RevenuesAc" text NULL,
        "VarianceAc" text NULL,
        "DecreasAc" text NULL,
        "IncreasAc" text NULL,
        "ReturnAc" text NULL,
        "ExpensesAc" text NULL,
        "EURevenuAc" text NULL,
        "EUExpensAc" text NULL,
        "FrRevenuAc" text NULL,
        "FrExpensAc" text NULL,
        "VatGroup" text NULL,
        "Street" text NULL,
        "Block" text NULL,
        "ZipCode" text NULL,
        "City" text NULL,
        "County" text NULL,
        "Country" text NULL,
        "State" text NULL,
        "Location" integer NOT NULL,
        "DropShip" text NULL,
        "ExmptIncom" text NULL,
        "UseTax" text NULL,
        "PriceDifAc" text NULL,
        "ExchangeAc" text NULL,
        "BalanceAcc" text NULL,
        "PurchaseAc" text NULL,
        "PAReturnAc" text NULL,
        "PurchOfsAc" text NULL,
        "FedTaxID" text NULL,
        "Building" text NULL,
        "ShpdGdsAct" text NULL,
        "VatRevAct" text NULL,
        "DecresGlAc" text NULL,
        "IncresGlAc" text NULL,
        "Nettable" text NULL,
        "StokRvlAct" text NULL,
        "StkOffsAct" text NULL,
        "WipAcct" text NULL,
        "WipVarAcct" text NULL,
        "CostRvlAct" text NULL,
        "CstOffsAct" text NULL,
        "ExpClrAct" text NULL,
        "ExpOfstAct" text NULL,
        "objType" text NULL,
        "logInstanc" integer NOT NULL,
        "createDate" timestamp without time zone NOT NULL,
        "userSign2" smallint NOT NULL,
        "updateDate" timestamp without time zone NOT NULL,
        "ARCMAct" text NULL,
        "ARCMFrnAct" text NULL,
        "ARCMEUAct" text NULL,
        "ARCMExpAct" text NULL,
        "APCMAct" text NULL,
        "APCMFrnAct" text NULL,
        "APCMEUAct" text NULL,
        "RevRetAct" text NULL,
        "BPLid" integer NOT NULL,
        "OwnerCode" text NULL,
        "NegStckAct" text NULL,
        "StkInTnAct" text NULL,
        "AddrType" text NULL,
        "StreetNo" text NULL,
        "PurBalAct" text NULL,
        "Excisable" text NULL,
        "WhICenAct" text NULL,
        "WhOCenAct" text NULL,
        "WhShipTo" text NULL,
        "WipOffset" text NULL,
        "StockOffst" text NULL,
        "StorKeeper" integer NOT NULL,
        "Shipper" text NULL,
        "BinActivat" text NULL,
        "BinSeptor" text NULL,
        "DftBinAbs" integer NOT NULL,
        "DftBinEnfd" text NULL,
        "AutoIssMtd" smallint NOT NULL,
        "ManageSnB" text NULL,
        "RecItemsBy" smallint NOT NULL,
        "RecBinEnab" text NULL,
        "GlblLocNum" text NULL,
        "RecvEmpBin" text NULL,
        "Inactive" text NULL,
        "RecvMaxQty" text NULL,
        "AutoRecvMd" smallint NOT NULL,
        "RecvMaxWT" text NULL,
        "RecvUpTo" text NULL,
        "FreeChrgSA" text NULL,
        "FreeChrgPU" text NULL,
        "TaxOffice" text NULL,
        "Address2" text NULL,
        "Address3" text NULL,
        "External" text NULL,
        "LegalText" text NULL,
        "U_CXS_STID" text NULL,
        "U_CXS_STRE" text NULL,
        "U_CXS_CACT" text NULL,
        "U_CXS_HID" text NULL,
        "U_CXS_INST" text NULL,
        "U_CXS_ISID" text NULL,
        "U_CXS_STAC" text NULL,
        "U_CXS_STFC" text NULL,
        "U_CXS_PCCD" text NULL,
        "U_CXS_PRCD" text NULL,
        "U_CXS_PLCD" text NULL,
        "U_CXS_STTP" text NULL,
        "U_CXS_IPCA" text NULL,
        "U_CXS_FCAC" text NULL,
        "U_CXS_FCFC" text NULL,
        "U_CXS_CRAC" text NULL,
        "U_CXS_CRFC" text NULL,
        "U_CXS_BNCD" text NULL,
        "U_CXS_CONT" text NULL,
        "U_CXS_COCD" text NULL,
        "U_CXS_BRCD" text NULL,
        "U_CXS_ACNO" text NULL,
        "U_CXS_TVAC" text NULL,
        "U_CXS_TVHD" text NULL,
        "U_CXS_ECOM" text NULL,
        "U_CXS_POIC" text NULL,
        "U_CustomGroup" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."OWTR" (
        "DocEntry" integer NOT NULL,
        "DocNum" integer NULL,
        "DocType" text NULL,
        "CANCELED" text NULL,
        "Handwrtten" text NULL,
        "Printed" text NULL,
        "DocStatus" text NULL,
        "InvntSttus" text NULL,
        "Transfered" text NULL,
        "ObjType" text NULL,
        "DocDate" timestamp without time zone NULL,
        "DocDueDate" timestamp without time zone NULL,
        "CardCode" text NULL,
        "CardName" text NULL,
        "Address" text NULL,
        "NumAtCard" text NULL,
        "VatPercent" numeric NULL,
        "VatSum" numeric NULL,
        "VatSumFC" numeric NULL,
        "DiscPrcnt" numeric NULL,
        "DiscSum" numeric NULL,
        "DiscSumFC" numeric NULL,
        "DocCur" text NULL,
        "DocRate" numeric NULL,
        "DocTotal" numeric NULL,
        "DocTotalFC" numeric NULL,
        "PaidToDate" numeric NULL,
        "PaidFC" numeric NULL,
        "GrosProfit" numeric NULL,
        "GrosProfFC" numeric NULL,
        "Ref1" text NULL,
        "Ref2" text NULL,
        "Comments" text NULL,
        "JrnlMemo" text NULL,
        "TransId" integer NULL,
        "ReceiptNum" integer NULL,
        "GroupNum" smallint NOT NULL,
        "DocTime" smallint NOT NULL,
        "SlpCode" integer NULL,
        "TrnspCode" smallint NOT NULL,
        "PartSupply" text NULL,
        "Confirmed" text NULL,
        "GrossBase" smallint NOT NULL,
        "ImportEnt" integer NULL,
        "CreateTran" text NULL,
        "SummryType" text NULL,
        "UpdInvnt" text NULL,
        "UpdCardBal" text NULL,
        "Instance" smallint NOT NULL,
        "Flags" integer NULL,
        "InvntDirec" text NULL,
        "CntctCode" integer NULL,
        "ShowSCN" text NULL,
        "FatherCard" text NULL,
        "SysRate" numeric NULL,
        "CurSource" text NULL,
        "VatSumSy" numeric NULL,
        "DiscSumSy" numeric NULL,
        "DocTotalSy" numeric NULL,
        "PaidSys" numeric NULL,
        "FatherType" text NULL,
        "GrosProfSy" numeric NULL,
        "UpdateDate" timestamp without time zone NULL,
        "IsICT" text NULL,
        "CreateDate" timestamp without time zone NULL,
        "Volume" numeric NULL,
        "VolUnit" smallint NOT NULL,
        "Weight" numeric NULL,
        "WeightUnit" smallint NOT NULL,
        "Series" integer NULL,
        "TaxDate" timestamp without time zone NULL,
        "Filler" text NULL,
        "DataSource" text NULL,
        "StampNum" text NULL,
        "isCrin" text NULL,
        "FinncPriod" integer NULL,
        "UserSign" smallint NOT NULL,
        "selfInv" text NULL,
        "VatPaid" numeric NULL,
        "VatPaidFC" numeric NULL,
        "VatPaidSys" numeric NULL,
        "UserSign2" smallint NOT NULL,
        "WddStatus" text NULL,
        "draftKey" integer NULL,
        "TotalExpns" numeric NULL,
        "TotalExpFC" numeric NULL,
        "TotalExpSC" numeric NULL,
        "DunnLevel" integer NULL,
        "Address2" text NULL,
        "LogInstanc" integer NULL,
        "Exported" text NULL,
        "StationID" integer NULL,
        "Indicator" text NULL,
        "NetProc" text NULL,
        "AqcsTax" numeric NULL,
        "AqcsTaxFC" numeric NULL,
        "AqcsTaxSC" numeric NULL,
        "CashDiscPr" numeric NULL,
        "CashDiscnt" numeric NULL,
        "CashDiscFC" numeric NULL,
        "CashDiscSC" numeric NULL,
        "ShipToCode" text NULL,
        "LicTradNum" text NULL,
        "PaymentRef" text NULL,
        "WTSum" numeric NULL,
        "WTSumFC" numeric NULL,
        "WTSumSC" numeric NULL,
        "RoundDif" numeric NULL,
        "RoundDifFC" numeric NULL,
        "RoundDifSy" numeric NULL,
        "CheckDigit" text NULL,
        "Form1099" integer NULL,
        "Box1099" text NULL,
        submitted text NULL,
        "PoPrss" text NULL,
        "Rounding" text NULL,
        "RevisionPo" text NULL,
        "Segment" smallint NOT NULL,
        "ReqDate" timestamp without time zone NULL,
        "CancelDate" timestamp without time zone NULL,
        "PickStatus" text NULL,
        "Pick" text NULL,
        "BlockDunn" text NULL,
        "PeyMethod" text NULL,
        "PayBlock" text NULL,
        "PayBlckRef" integer NULL,
        "MaxDscn" text NULL,
        "Reserve" text NULL,
        "Max1099" numeric NULL,
        "CntrlBnk" text NULL,
        "PickRmrk" text NULL,
        "ISRCodLine" text NULL,
        "ExpAppl" numeric NULL,
        "ExpApplFC" numeric NULL,
        "ExpApplSC" numeric NULL,
        "Project" text NULL,
        "DeferrTax" text NULL,
        "LetterNum" text NULL,
        "FromDate" timestamp without time zone NULL,
        "ToDate" timestamp without time zone NULL,
        "WTApplied" numeric NULL,
        "WTAppliedF" numeric NULL,
        "BoeReserev" text NULL,
        "AgentCode" text NULL,
        "WTAppliedS" numeric NULL,
        "EquVatSum" numeric NULL,
        "EquVatSumF" numeric NULL,
        "EquVatSumS" numeric NULL,
        "Installmnt" smallint NOT NULL,
        "VATFirst" text NULL,
        "NnSbAmnt" numeric NULL,
        "NnSbAmntSC" numeric NULL,
        "NbSbAmntFC" numeric NULL,
        "ExepAmnt" numeric NULL,
        "ExepAmntSC" numeric NULL,
        "ExepAmntFC" numeric NULL,
        "VatDate" timestamp without time zone NULL,
        "CorrExt" text NULL,
        "CorrInv" integer NULL,
        "NCorrInv" integer NULL,
        "CEECFlag" text NULL,
        "BaseAmnt" numeric NULL,
        "BaseAmntSC" numeric NULL,
        "BaseAmntFC" numeric NULL,
        "CtlAccount" text NULL,
        "BPLId" integer NULL,
        "BPLName" text NULL,
        "VATRegNum" text NULL,
        "TxInvRptNo" text NULL,
        "TxInvRptDt" timestamp without time zone NULL,
        "KVVATCode" text NULL,
        "WTDetails" text NULL,
        "SumAbsId" integer NULL,
        "SumRptDate" timestamp without time zone NULL,
        "PIndicator" text NULL,
        "ManualNum" text NULL,
        "UseShpdGd" text NULL,
        "BaseVtAt" numeric NULL,
        "BaseVtAtSC" numeric NULL,
        "BaseVtAtFC" numeric NULL,
        "NnSbVAt" numeric NULL,
        "NnSbVAtSC" numeric NULL,
        "NbSbVAtFC" numeric NULL,
        "ExptVAt" numeric NULL,
        "ExptVAtSC" numeric NULL,
        "ExptVAtFC" numeric NULL,
        "LYPmtAt" numeric NULL,
        "LYPmtAtSC" numeric NULL,
        "LYPmtAtFC" numeric NULL,
        "ExpAnSum" numeric NULL,
        "ExpAnSys" numeric NULL,
        "ExpAnFrgn" numeric NULL,
        "DocSubType" text NULL,
        "DpmStatus" text NULL,
        "DpmAmnt" numeric NULL,
        "DpmAmntSC" numeric NULL,
        "DpmAmntFC" numeric NULL,
        "DpmDrawn" text NULL,
        "DpmPrcnt" numeric NULL,
        "PaidSum" numeric NULL,
        "PaidSumFc" numeric NULL,
        "PaidSumSc" numeric NULL,
        "FolioPref" text NULL,
        "FolioNum" integer NULL,
        "DpmAppl" numeric NULL,
        "DpmApplFc" numeric NULL,
        "DpmApplSc" numeric NULL,
        "LPgFolioN" integer NULL,
        "Header" text NULL,
        "Footer" text NULL,
        "Posted" text NULL,
        "OwnerCode" integer NULL,
        "BPChCode" text NULL,
        "BPChCntc" integer NULL,
        "PayToCode" text NULL,
        "IsPaytoBnk" text NULL,
        "BnkCntry" text NULL,
        "BankCode" text NULL,
        "BnkAccount" text NULL,
        "BnkBranch" text NULL,
        "isIns" text NULL,
        "TrackNo" text NULL,
        "VersionNum" text NULL,
        "LangCode" integer NULL,
        "BPNameOW" text NULL,
        "BillToOW" text NULL,
        "ShipToOW" text NULL,
        "RetInvoice" text NULL,
        "ClsDate" timestamp without time zone NULL,
        "MInvNum" integer NULL,
        "MInvDate" timestamp without time zone NULL,
        "SeqCode" smallint NOT NULL,
        "Serial" integer NULL,
        "SeriesStr" text NULL,
        "SubStr" text NULL,
        "Model" text NULL,
        "TaxOnExp" numeric NULL,
        "TaxOnExpFc" numeric NULL,
        "TaxOnExpSc" numeric NULL,
        "TaxOnExAp" numeric NULL,
        "TaxOnExApF" numeric NULL,
        "TaxOnExApS" numeric NULL,
        "LastPmnTyp" text NULL,
        "LndCstNum" integer NULL,
        "UseCorrVat" text NULL,
        "BlkCredMmo" text NULL,
        "OpenForLaC" text NULL,
        "Excised" text NULL,
        "ExcRefDate" timestamp without time zone NULL,
        "ExcRmvTime" text NULL,
        "SrvGpPrcnt" numeric NULL,
        "DepositNum" integer NULL,
        "CertNum" text NULL,
        "DutyStatus" text NULL,
        "AutoCrtFlw" text NULL,
        "FlwRefDate" timestamp without time zone NULL,
        "FlwRefNum" text NULL,
        "VatJENum" integer NULL,
        "DpmVat" numeric NULL,
        "DpmVatFc" numeric NULL,
        "DpmVatSc" numeric NULL,
        "DpmAppVat" numeric NULL,
        "DpmAppVatF" numeric NULL,
        "DpmAppVatS" numeric NULL,
        "InsurOp347" text NULL,
        "IgnRelDoc" text NULL,
        "BuildDesc" text NULL,
        "ResidenNum" text NULL,
        "Checker" integer NULL,
        "Payee" integer NULL,
        "CopyNumber" integer NULL,
        "SSIExmpt" text NULL,
        "PQTGrpSer" integer NULL,
        "PQTGrpNum" integer NULL,
        "PQTGrpHW" text NULL,
        "ReopOriDoc" text NULL,
        "ReopManCls" text NULL,
        "DocManClsd" text NULL,
        "ClosingOpt" smallint NOT NULL,
        "SpecDate" timestamp without time zone NULL,
        "Ordered" text NULL,
        "NTSApprov" text NULL,
        "NTSWebSite" smallint NOT NULL,
        "NTSeTaxNo" text NULL,
        "NTSApprNo" text NULL,
        "PayDuMonth" text NULL,
        "ExtraMonth" smallint NOT NULL,
        "ExtraDays" smallint NOT NULL,
        "CdcOffset" smallint NOT NULL,
        "SignMsg" text NULL,
        "SignDigest" text NULL,
        "CertifNum" text NULL,
        "KeyVersion" integer NULL,
        "EDocGenTyp" text NULL,
        "ESeries" smallint NOT NULL,
        "EDocNum" text NULL,
        "EDocExpFrm" integer NULL,
        "OnlineQuo" text NULL,
        "POSEqNum" text NULL,
        "POSManufSN" text NULL,
        "POSCashN" integer NULL,
        "EDocStatus" text NULL,
        "EDocCntnt" text NULL,
        "EDocProces" text NULL,
        "EDocErrCod" text NULL,
        "EDocErrMsg" text NULL,
        "EDocCancel" text NULL,
        "EDocTest" text NULL,
        "EDocPrefix" text NULL,
        "CUP" integer NULL,
        "CIG" integer NULL,
        "DpmAsDscnt" text NULL,
        "Attachment" text NULL,
        "AtcEntry" integer NULL,
        "SupplCode" text NULL,
        "GTSRlvnt" text NULL,
        "BaseDisc" numeric NULL,
        "BaseDiscSc" numeric NULL,
        "BaseDiscFc" numeric NULL,
        "BaseDiscPr" numeric NULL,
        "CreateTS" integer NULL,
        "UpdateTS" integer NULL,
        "SrvTaxRule" text NULL,
        "AnnInvDecR" integer NULL,
        "Supplier" text NULL,
        "Releaser" integer NULL,
        "Receiver" integer NULL,
        "ToWhsCode" text NULL,
        "AssetDate" timestamp without time zone NULL,
        "Requester" text NULL,
        "ReqName" text NULL,
        "Branch" smallint NOT NULL,
        "Department" smallint NOT NULL,
        "Email" text NULL,
        "Notify" text NULL,
        "ReqType" integer NULL,
        "OriginType" text NULL,
        "IsReuseNum" text NULL,
        "IsReuseNFN" text NULL,
        "DocDlvry" text NULL,
        "PaidDpm" numeric NULL,
        "PaidDpmF" numeric NULL,
        "PaidDpmS" numeric NULL,
        "EnvTypeNFe" integer NULL,
        "AgrNo" integer NULL,
        "IsAlt" text NULL,
        "AltBaseTyp" integer NULL,
        "AltBaseEnt" integer NULL,
        "AuthCode" text NULL,
        "StDlvDate" timestamp without time zone NULL,
        "StDlvTime" integer NULL,
        "EndDlvDate" timestamp without time zone NULL,
        "EndDlvTime" integer NULL,
        "VclPlate" text NULL,
        "ElCoStatus" text NULL,
        "AtDocType" text NULL,
        "ElCoMsg" text NULL,
        "PrintSEPA" text NULL,
        "FreeChrg" numeric NULL,
        "FreeChrgFC" numeric NULL,
        "FreeChrgSC" numeric NULL,
        "NfeValue" numeric NULL,
        "FiscDocNum" text NULL,
        "RelatedTyp" integer NULL,
        "RelatedEnt" integer NULL,
        "CCDEntry" integer NULL,
        "NfePrntFo" integer NULL,
        "ZrdAbs" integer NULL,
        "POSRcptNo" integer NULL,
        "FoCTax" numeric NULL,
        "FoCTaxFC" numeric NULL,
        "FoCTaxSC" numeric NULL,
        "TpCusPres" integer NULL,
        "ExcDocDate" timestamp without time zone NULL,
        "FoCFrght" numeric NULL,
        "FoCFrghtFC" numeric NULL,
        "FoCFrghtSC" numeric NULL,
        "InterimTyp" smallint NOT NULL,
        "PTICode" text NULL,
        "Letter" text NULL,
        "FolNumFrom" integer NULL,
        "FolNumTo" integer NULL,
        "FolSeries" integer NULL,
        "SplitTax" numeric NULL,
        "SplitTaxFC" numeric NULL,
        "SplitTaxSC" numeric NULL,
        "ToBinCode" text NULL,
        "PriceMode" text NULL,
        "PoDropPrss" text NULL,
        "PermitNo" text NULL,
        "MYFtype" text NULL,
        "DocTaxID" text NULL,
        "DateReport" timestamp without time zone NULL,
        "RepSection" text NULL,
        "ExclTaxRep" text NULL,
        "PosCashReg" integer NULL,
        "DmpTransID" text NULL,
        "ECommerBP" text NULL,
        "EComerGSTN" text NULL,
        "Revision" text NULL,
        "RevRefNo" text NULL,
        "RevRefDate" timestamp without time zone NULL,
        "RevCreRefN" text NULL,
        "RevCreRefD" timestamp without time zone NULL,
        "TaxInvNo" text NULL,
        "FrmBpDate" timestamp without time zone NULL,
        "GSTTranTyp" text NULL,
        "BaseType" integer NULL,
        "BaseEntry" integer NULL,
        "ComTrade" text NULL,
        "UseBilAddr" text NULL,
        "IssReason" smallint NOT NULL,
        "ComTradeRt" text NULL,
        "SplitPmnt" text NULL,
        "SOIWizId" integer NULL,
        "SelfPosted" text NULL,
        "EnBnkAcct" text NULL,
        "EncryptIV" text NULL,
        "DPPStatus" text NULL,
        "SAPPassprt" text NULL,
        "EWBGenType" text NULL,
        "CtActTax" numeric NULL,
        "CtActTaxFC" numeric NULL,
        "CtActTaxSC" numeric NULL,
        "EDocType" text NULL,
        "QRCodeSrc" text NULL,
        "AggregDoc" text NULL,
        "DataVers" integer NULL,
        "ShipState" text NULL,
        "ShipPlace" text NULL,
        "CustOffice" text NULL,
        "FCI" text NULL,
        "NnSbCuAmnt" numeric NULL,
        "NnSbCuSC" numeric NULL,
        "NnSbCuFC" numeric NULL,
        "ExepCuAmnt" numeric NULL,
        "ExepCuSC" numeric NULL,
        "ExepCuFC" numeric NULL,
        "AddLegIn" text NULL,
        "LegTextF" integer NULL,
        "IndFinal" text NULL,
        "DANFELgTxt" text NULL,
        "PostPmntWT" text NULL,
        "QRCodeSPGn" text NULL,
        "FCEPmnMean" text NULL,
        CONSTRAINT "PK_OWTR" PRIMARY KEY ("DocEntry")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."PDN1" (
        "DocEntry" integer NOT NULL,
        "LineNum" integer NOT NULL,
        "TargetType" integer NOT NULL,
        "TrgetEntry" integer NOT NULL,
        "BaseRef" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "BaseLine" integer NOT NULL,
        "LineStatus" text NULL,
        "ItemCode" text NULL,
        "Dscription" text NULL,
        "Quantity" numeric NOT NULL,
        "ShipDate" timestamp without time zone NULL,
        "OpenQty" numeric NOT NULL,
        "Price" numeric NOT NULL,
        "Currency" text NULL,
        "Rate" numeric NOT NULL,
        "DiscPrcnt" numeric NOT NULL,
        "LineTotal" numeric NOT NULL,
        "TotalFrgn" numeric NOT NULL,
        "OpenSum" numeric NOT NULL,
        "OpenSumFC" numeric NOT NULL,
        "VendorNum" text NULL,
        "SerialNum" text NULL,
        "WhsCode" text NULL,
        "SlpCode" integer NOT NULL,
        "Commission" numeric NOT NULL,
        "TreeType" text NULL,
        "AcctCode" text NULL,
        "TaxStatus" text NULL,
        "GrossBuyPr" numeric NOT NULL,
        "PriceBefDi" numeric NOT NULL,
        "DocDate" timestamp without time zone NULL,
        "Flags" integer NOT NULL,
        "OpenCreQty" numeric NOT NULL,
        "UseBaseUn" text NULL,
        "SubCatNum" text NULL,
        "BaseCard" text NULL,
        "TotalSumSy" numeric NOT NULL,
        "OpenSumSys" numeric NOT NULL,
        "InvntSttus" text NULL,
        "OcrCode" text NULL,
        "Project" text NULL,
        "CodeBars" text NULL,
        "VatPrcnt" numeric NOT NULL,
        "VatGroup" text NULL,
        "PriceAfVAT" numeric NOT NULL,
        "Height1" numeric NOT NULL,
        "Hght1Unit" smallint NOT NULL,
        "Height2" numeric NOT NULL,
        "Hght2Unit" smallint NOT NULL,
        "Width1" numeric NOT NULL,
        "Wdth1Unit" smallint NOT NULL,
        "Width2" numeric NOT NULL,
        "Wdth2Unit" smallint NOT NULL,
        "Length1" numeric NOT NULL,
        "Len1Unit" smallint NOT NULL,
        length2 numeric NOT NULL,
        "Len2Unit" smallint NOT NULL,
        "Volume" numeric NOT NULL,
        "VolUnit" smallint NOT NULL,
        "Weight1" numeric NOT NULL,
        "Wght1Unit" smallint NOT NULL,
        "Weight2" numeric NOT NULL,
        "Wght2Unit" smallint NOT NULL,
        "Factor1" numeric NOT NULL,
        "Factor2" numeric NOT NULL,
        "Factor3" numeric NOT NULL,
        "Factor4" numeric NOT NULL,
        "PackQty" numeric NOT NULL,
        "UpdInvntry" text NULL,
        "BaseDocNum" integer NOT NULL,
        "BaseAtCard" text NULL,
        "SWW" text NULL,
        "VatSum" numeric NOT NULL,
        "VatSumFrgn" numeric NOT NULL,
        "VatSumSy" numeric NOT NULL,
        "FinncPriod" integer NOT NULL,
        "ObjType" text NULL,
        "LogInstanc" integer NOT NULL,
        "BlockNum" text NULL,
        "ImportLog" text NULL,
        "DedVatSum" numeric NOT NULL,
        "DedVatSumF" numeric NOT NULL,
        "DedVatSumS" numeric NOT NULL,
        "IsAqcuistn" text NULL,
        "DistribSum" numeric NOT NULL,
        "DstrbSumFC" numeric NOT NULL,
        "DstrbSumSC" numeric NOT NULL,
        "GrssProfit" numeric NOT NULL,
        "GrssProfSC" numeric NOT NULL,
        "GrssProfFC" numeric NOT NULL,
        "VisOrder" integer NOT NULL,
        "INMPrice" numeric NOT NULL,
        "PoTrgNum" integer NOT NULL,
        "PoTrgEntry" text NULL,
        "DropShip" text NULL,
        "PoLineNum" integer NOT NULL,
        "Address" text NULL,
        "TaxCode" text NULL,
        "TaxType" text NULL,
        "OrigItem" text NULL,
        "BackOrdr" text NULL,
        "FreeTxt" text NULL,
        "PickStatus" text NULL,
        "PickOty" numeric NOT NULL,
        "PickIdNo" integer NOT NULL,
        "TrnsCode" smallint NOT NULL,
        "VatAppld" numeric NOT NULL,
        "VatAppldFC" numeric NOT NULL,
        "VatAppldSC" numeric NOT NULL,
        "BaseQty" numeric NOT NULL,
        "BaseOpnQty" numeric NOT NULL,
        "VatDscntPr" numeric NOT NULL,
        "WtLiable" text NULL,
        "DeferrTax" text NULL,
        "EquVatPer" numeric NOT NULL,
        "EquVatSum" numeric NOT NULL,
        "EquVatSumF" numeric NOT NULL,
        "EquVatSumS" numeric NOT NULL,
        "LineVat" numeric NOT NULL,
        "LineVatlF" numeric NOT NULL,
        "LineVatS" numeric NOT NULL,
        "unitMsr" text NULL,
        "NumPerMsr" numeric NOT NULL,
        "CEECFlag" text NULL,
        "ToStock" numeric NOT NULL,
        "ToDiff" numeric NOT NULL,
        "ExciseAmt" numeric NOT NULL,
        "TaxPerUnit" numeric NOT NULL,
        "TotInclTax" numeric NOT NULL,
        "CountryOrg" text NULL,
        "StckDstSum" numeric NOT NULL,
        "ReleasQtty" numeric NOT NULL,
        "LineType" text NULL,
        "TranType" text NULL,
        "Text" text NULL,
        "OwnerCode" integer NOT NULL,
        "StockPrice" numeric NOT NULL,
        "ConsumeFCT" text NULL,
        "LstByDsSum" numeric NOT NULL,
        "StckINMPr" numeric NOT NULL,
        "LstBINMPr" numeric NOT NULL,
        "StckDstFc" numeric NOT NULL,
        "StckDstSc" numeric NOT NULL,
        "LstByDsFc" numeric NOT NULL,
        "LstByDsSc" numeric NOT NULL,
        "StockSum" numeric NOT NULL,
        "StockSumFc" numeric NOT NULL,
        "StockSumSc" numeric NOT NULL,
        "StckSumApp" numeric NOT NULL,
        "StckAppFc" numeric NOT NULL,
        "StckAppSc" numeric NOT NULL,
        "ShipToCode" text NULL,
        "ShipToDesc" text NULL,
        "StckAppD" numeric NOT NULL,
        "StckAppDFC" numeric NOT NULL,
        "StckAppDSC" numeric NOT NULL,
        "BasePrice" text NULL,
        "GTotal" numeric NOT NULL,
        "GTotalFC" numeric NOT NULL,
        "GTotalSC" numeric NOT NULL,
        "DistribExp" text NULL,
        "DescOW" text NULL,
        "DetailsOW" text NULL,
        "GrossBase" smallint NOT NULL,
        "VatWoDpm" numeric NOT NULL,
        "VatWoDpmFc" numeric NOT NULL,
        "VatWoDpmSc" numeric NOT NULL,
        "CFOPCode" text NULL,
        "CSTCode" text NULL,
        "Usage" integer NOT NULL,
        "TaxOnly" text NULL,
        "WtCalced" text NULL,
        "QtyToShip" numeric NOT NULL,
        "DelivrdQty" numeric NOT NULL,
        "OrderedQty" numeric NOT NULL,
        "CogsOcrCod" text NULL,
        "CiOppLineN" integer NOT NULL,
        "CogsAcct" text NULL,
        "ChgAsmBoMW" text NULL,
        "ActDelDate" timestamp without time zone NULL,
        "OcrCode2" text NULL,
        "OcrCode3" text NULL,
        "OcrCode4" text NULL,
        "OcrCode5" text NULL,
        "TaxDistSum" numeric NOT NULL,
        "TaxDistSFC" numeric NOT NULL,
        "TaxDistSSC" numeric NOT NULL,
        "PostTax" text NULL,
        "Excisable" text NULL,
        "AssblValue" numeric NOT NULL,
        "RG23APart1" integer NOT NULL,
        "RG23APart2" integer NOT NULL,
        "RG23CPart1" integer NOT NULL,
        "RG23CPart2" integer NOT NULL,
        "CogsOcrCo2" text NULL,
        "CogsOcrCo3" text NULL,
        "CogsOcrCo4" text NULL,
        "CogsOcrCo5" text NULL,
        "LnExcised" text NULL,
        "LocCode" integer NOT NULL,
        "StockValue" numeric NOT NULL,
        "GPTtlBasPr" numeric NOT NULL,
        "unitMsr2" text NULL,
        "NumPerMsr2" numeric NOT NULL,
        "SpecPrice" text NULL,
        "CSTfIPI" text NULL,
        "CSTfPIS" text NULL,
        "CSTfCOFINS" text NULL,
        "ExLineNo" text NULL,
        "isSrvCall" text NULL,
        "PQTReqQty" numeric NOT NULL,
        "PQTReqDate" timestamp without time zone NULL,
        "PcDocType" integer NOT NULL,
        "PcQuantity" numeric NOT NULL,
        "LinManClsd" text NULL,
        "VatGrpSrc" text NULL,
        "NoInvtryMv" text NULL,
        "ActBaseEnt" integer NOT NULL,
        "ActBaseLn" integer NOT NULL,
        "ActBaseNum" integer NOT NULL,
        "OpenRtnQty" numeric NOT NULL,
        "AgrNo" integer NOT NULL,
        "AgrLnNum" integer NOT NULL,
        "CredOrigin" text NULL,
        "Surpluses" numeric NOT NULL,
        "DefBreak" numeric NOT NULL,
        "Shortages" numeric NOT NULL,
        "UomEntry" integer NOT NULL,
        "UomEntry2" integer NOT NULL,
        "UomCode" text NULL,
        "UomCode2" text NULL,
        "FromWhsCod" text NULL,
        "NeedQty" text NULL,
        "PartRetire" text NULL,
        "RetireQty" numeric NOT NULL,
        "RetireAPC" numeric NOT NULL,
        "RetirAPCFC" numeric NOT NULL,
        "RetirAPCSC" numeric NOT NULL,
        "InvQty" numeric NOT NULL,
        "OpenInvQty" numeric NOT NULL,
        "EnSetCost" text NULL,
        "RetCost" numeric NOT NULL,
        "Incoterms" integer NOT NULL,
        "TransMod" integer NOT NULL,
        "LineVendor" text NULL,
        "DistribIS" text NULL,
        "ISDistrb" numeric NOT NULL,
        "ISDistrbFC" numeric NOT NULL,
        "ISDistrbSC" numeric NOT NULL,
        "IsByPrdct" text NULL,
        "ItemType" integer NOT NULL,
        "PriceEdit" text NULL,
        "PrntLnNum" integer NOT NULL,
        "LinePoPrss" text NULL,
        "FreeChrgBP" text NULL,
        "TaxRelev" text NULL,
        "LegalText" text NULL,
        "ThirdParty" text NULL,
        "LicTradNum" text NULL,
        "InvQtyOnly" text NULL,
        "UnencReasn" integer NOT NULL,
        "ShipFromCo" text NULL,
        "ShipFromDe" text NULL,
        "FisrtBin" text NULL,
        "AllocBinC" text NULL,
        "ExpType" text NULL,
        "ExpUUID" text NULL,
        "ExpOpType" text NULL,
        "DIOTNat" text NULL,
        "MYFtype" text NULL,
        "GPBefDisc" numeric NOT NULL,
        "ReturnRsn" smallint NOT NULL,
        "ReturnAct" smallint NOT NULL,
        "StgSeqNum" integer NOT NULL,
        "StgEntry" integer NOT NULL,
        "StgDesc" text NULL,
        "ItmTaxType" text NULL,
        "SacEntry" integer NOT NULL,
        "NCMCode" integer NOT NULL,
        "HsnEntry" integer NOT NULL,
        "OriBAbsEnt" integer NOT NULL,
        "OriBLinNum" integer NOT NULL,
        "OriBDocTyp" integer NOT NULL,
        "IsPrscGood" text NULL,
        "IsCstmAct" text NULL,
        "EncryptIV" text NULL,
        "ExtTaxRate" numeric NOT NULL,
        "ExtTaxSum" numeric NOT NULL,
        "TaxAmtSrc" text NULL,
        "ExtTaxSumF" numeric NOT NULL,
        "ExtTaxSumS" numeric NOT NULL,
        "StdItemId" integer NOT NULL,
        "CommClass" integer NOT NULL,
        "VatExEntry" integer NOT NULL,
        "VatExLN" smallint NOT NULL,
        "NatOfTrans" integer NOT NULL,
        "ISDtCryImp" text NULL,
        "ISDtRgnImp" integer NOT NULL,
        "ISOrCryExp" text NULL,
        "ISOrRgnExp" integer NOT NULL,
        "NVECode" text NULL,
        "PoNum" text NULL,
        "PoItmNum" integer NOT NULL,
        "IndEscala" text NULL,
        "CESTCode" integer NOT NULL,
        "CtrSealQty" numeric NOT NULL,
        "CNJPMan" text NULL,
        "UFFiscBene" text NULL,
        "CUSplit" text NULL,
        "LegalTIMD" text NULL,
        "LegalTTCA" text NULL,
        "LegalTW" text NULL,
        "LegalTCD" text NULL,
        "U_CXS_TDKY" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_U_Negative" numeric NOT NULL,
        "U_Expired" text NULL,
        "U_Qty" text NULL,
        "U_Price" text NULL,
        "U_Unit" text NULL,
        "U_MYANAMRLABEL" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."POR1" (
        "DocEntry" integer NOT NULL,
        "LineNum" integer NOT NULL,
        "TargetType" integer NOT NULL,
        "TrgetEntry" integer NOT NULL,
        "BaseRef" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "BaseLine" integer NOT NULL,
        "LineStatus" text NULL,
        "ItemCode" text NULL,
        "Dscription" text NULL,
        "Quantity" numeric NOT NULL,
        "ShipDate" timestamp without time zone NULL,
        "OpenQty" numeric NOT NULL,
        "Price" numeric NOT NULL,
        "Currency" text NULL,
        "Rate" numeric NOT NULL,
        "DiscPrcnt" numeric NOT NULL,
        "LineTotal" numeric NOT NULL,
        "TotalFrgn" numeric NOT NULL,
        "OpenSum" numeric NOT NULL,
        "OpenSumFC" numeric NOT NULL,
        "VendorNum" text NULL,
        "SerialNum" text NULL,
        "WhsCode" text NULL,
        "SlpCode" integer NOT NULL,
        "Commission" numeric NOT NULL,
        "TreeType" text NULL,
        "AcctCode" text NULL,
        "TaxStatus" text NULL,
        "GrossBuyPr" numeric NOT NULL,
        "PriceBefDi" numeric NOT NULL,
        "DocDate" timestamp without time zone NULL,
        "Flags" integer NOT NULL,
        "OpenCreQty" numeric NOT NULL,
        "UseBaseUn" text NULL,
        "SubCatNum" text NULL,
        "BaseCard" text NULL,
        "TotalSumSy" numeric NOT NULL,
        "OpenSumSys" numeric NOT NULL,
        "InvntSttus" text NULL,
        "OcrCode" text NULL,
        "Project" text NULL,
        "CodeBars" text NULL,
        "VatPrcnt" numeric NOT NULL,
        "VatGroup" text NULL,
        "PriceAfVAT" numeric NOT NULL,
        "Height1" numeric NOT NULL,
        "Hght1Unit" smallint NOT NULL,
        "Height2" numeric NOT NULL,
        "Hght2Unit" smallint NOT NULL,
        "Width1" numeric NOT NULL,
        "Wdth1Unit" smallint NOT NULL,
        "Width2" numeric NOT NULL,
        "Wdth2Unit" smallint NOT NULL,
        "Length1" numeric NOT NULL,
        "Len1Unit" smallint NOT NULL,
        length2 numeric NOT NULL,
        "Len2Unit" smallint NOT NULL,
        "Volume" numeric NOT NULL,
        "VolUnit" smallint NOT NULL,
        "Weight1" numeric NOT NULL,
        "Wght1Unit" smallint NOT NULL,
        "Weight2" numeric NOT NULL,
        "Wght2Unit" smallint NOT NULL,
        "Factor1" numeric NOT NULL,
        "Factor2" numeric NOT NULL,
        "Factor3" numeric NOT NULL,
        "Factor4" numeric NOT NULL,
        "PackQty" numeric NOT NULL,
        "UpdInvntry" text NULL,
        "BaseDocNum" integer NOT NULL,
        "BaseAtCard" text NULL,
        "SWW" text NULL,
        "VatSum" numeric NOT NULL,
        "VatSumFrgn" numeric NOT NULL,
        "VatSumSy" numeric NOT NULL,
        "FinncPriod" integer NOT NULL,
        "ObjType" text NULL,
        "LogInstanc" integer NOT NULL,
        "BlockNum" text NULL,
        "ImportLog" text NULL,
        "DedVatSum" numeric NOT NULL,
        "DedVatSumF" numeric NOT NULL,
        "DedVatSumS" numeric NOT NULL,
        "IsAqcuistn" text NULL,
        "DistribSum" numeric NOT NULL,
        "DstrbSumFC" numeric NOT NULL,
        "DstrbSumSC" numeric NOT NULL,
        "GrssProfit" numeric NOT NULL,
        "GrssProfSC" numeric NOT NULL,
        "GrssProfFC" numeric NOT NULL,
        "VisOrder" integer NOT NULL,
        "INMPrice" numeric NOT NULL,
        "PoTrgNum" integer NOT NULL,
        "PoTrgEntry" text NULL,
        "DropShip" text NULL,
        "PoLineNum" integer NOT NULL,
        "Address" text NULL,
        "TaxCode" text NULL,
        "TaxType" text NULL,
        "OrigItem" text NULL,
        "BackOrdr" text NULL,
        "FreeTxt" text NULL,
        "PickStatus" text NULL,
        "PickOty" numeric NOT NULL,
        "PickIdNo" integer NOT NULL,
        "TrnsCode" smallint NOT NULL,
        "VatAppld" numeric NOT NULL,
        "VatAppldFC" numeric NOT NULL,
        "VatAppldSC" numeric NOT NULL,
        "BaseQty" numeric NOT NULL,
        "BaseOpnQty" numeric NOT NULL,
        "VatDscntPr" numeric NOT NULL,
        "WtLiable" text NULL,
        "DeferrTax" text NULL,
        "EquVatPer" numeric NOT NULL,
        "EquVatSum" numeric NOT NULL,
        "EquVatSumF" numeric NOT NULL,
        "EquVatSumS" numeric NOT NULL,
        "LineVat" numeric NOT NULL,
        "LineVatlF" numeric NOT NULL,
        "LineVatS" numeric NOT NULL,
        "unitMsr" text NULL,
        "NumPerMsr" numeric NOT NULL,
        "CEECFlag" text NULL,
        "ToStock" numeric NOT NULL,
        "ToDiff" numeric NOT NULL,
        "ExciseAmt" numeric NOT NULL,
        "TaxPerUnit" numeric NOT NULL,
        "TotInclTax" numeric NOT NULL,
        "CountryOrg" text NULL,
        "StckDstSum" numeric NOT NULL,
        "ReleasQtty" numeric NOT NULL,
        "LineType" text NULL,
        "TranType" text NULL,
        "Text" text NULL,
        "OwnerCode" integer NOT NULL,
        "StockPrice" numeric NOT NULL,
        "ConsumeFCT" text NULL,
        "LstByDsSum" numeric NOT NULL,
        "StckINMPr" numeric NOT NULL,
        "LstBINMPr" numeric NOT NULL,
        "StckDstFc" numeric NOT NULL,
        "StckDstSc" numeric NOT NULL,
        "LstByDsFc" numeric NOT NULL,
        "LstByDsSc" numeric NOT NULL,
        "StockSum" numeric NOT NULL,
        "StockSumFc" numeric NOT NULL,
        "StockSumSc" numeric NOT NULL,
        "StckSumApp" numeric NOT NULL,
        "StckAppFc" numeric NOT NULL,
        "StckAppSc" numeric NOT NULL,
        "ShipToCode" text NULL,
        "ShipToDesc" text NULL,
        "StckAppD" numeric NOT NULL,
        "StckAppDFC" numeric NOT NULL,
        "StckAppDSC" numeric NOT NULL,
        "BasePrice" text NULL,
        "GTotal" numeric NOT NULL,
        "GTotalFC" numeric NOT NULL,
        "GTotalSC" numeric NOT NULL,
        "DistribExp" text NULL,
        "DescOW" text NULL,
        "DetailsOW" text NULL,
        "GrossBase" smallint NOT NULL,
        "VatWoDpm" numeric NOT NULL,
        "VatWoDpmFc" numeric NOT NULL,
        "VatWoDpmSc" numeric NOT NULL,
        "CFOPCode" text NULL,
        "CSTCode" text NULL,
        "Usage" integer NOT NULL,
        "TaxOnly" text NULL,
        "WtCalced" text NULL,
        "QtyToShip" numeric NOT NULL,
        "DelivrdQty" numeric NOT NULL,
        "OrderedQty" numeric NOT NULL,
        "CogsOcrCod" text NULL,
        "CiOppLineN" integer NOT NULL,
        "CogsAcct" text NULL,
        "ChgAsmBoMW" text NULL,
        "ActDelDate" timestamp without time zone NULL,
        "OcrCode2" text NULL,
        "OcrCode3" text NULL,
        "OcrCode4" text NULL,
        "OcrCode5" text NULL,
        "TaxDistSum" numeric NOT NULL,
        "TaxDistSFC" numeric NOT NULL,
        "TaxDistSSC" numeric NOT NULL,
        "PostTax" text NULL,
        "Excisable" text NULL,
        "AssblValue" numeric NOT NULL,
        "RG23APart1" integer NOT NULL,
        "RG23APart2" integer NOT NULL,
        "RG23CPart1" integer NOT NULL,
        "RG23CPart2" integer NOT NULL,
        "CogsOcrCo2" text NULL,
        "CogsOcrCo3" text NULL,
        "CogsOcrCo4" text NULL,
        "CogsOcrCo5" text NULL,
        "LnExcised" text NULL,
        "LocCode" integer NOT NULL,
        "StockValue" numeric NOT NULL,
        "GPTtlBasPr" numeric NOT NULL,
        "unitMsr2" text NULL,
        "NumPerMsr2" numeric NOT NULL,
        "SpecPrice" text NULL,
        "CSTfIPI" text NULL,
        "CSTfPIS" text NULL,
        "CSTfCOFINS" text NULL,
        "ExLineNo" text NULL,
        "isSrvCall" text NULL,
        "PQTReqQty" numeric NOT NULL,
        "PQTReqDate" timestamp without time zone NULL,
        "PcDocType" integer NOT NULL,
        "PcQuantity" numeric NOT NULL,
        "LinManClsd" text NULL,
        "VatGrpSrc" text NULL,
        "NoInvtryMv" text NULL,
        "ActBaseEnt" integer NOT NULL,
        "ActBaseLn" integer NOT NULL,
        "ActBaseNum" integer NOT NULL,
        "OpenRtnQty" numeric NOT NULL,
        "AgrNo" integer NOT NULL,
        "AgrLnNum" integer NOT NULL,
        "CredOrigin" text NULL,
        "Surpluses" numeric NOT NULL,
        "DefBreak" numeric NOT NULL,
        "Shortages" numeric NOT NULL,
        "UomEntry" integer NOT NULL,
        "UomEntry2" integer NOT NULL,
        "UomCode" text NULL,
        "UomCode2" text NULL,
        "FromWhsCod" text NULL,
        "NeedQty" text NULL,
        "PartRetire" text NULL,
        "RetireQty" numeric NOT NULL,
        "RetireAPC" numeric NOT NULL,
        "RetirAPCFC" numeric NOT NULL,
        "RetirAPCSC" numeric NOT NULL,
        "InvQty" numeric NOT NULL,
        "OpenInvQty" numeric NOT NULL,
        "EnSetCost" text NULL,
        "RetCost" numeric NOT NULL,
        "Incoterms" integer NOT NULL,
        "TransMod" integer NOT NULL,
        "LineVendor" text NULL,
        "DistribIS" text NULL,
        "ISDistrb" numeric NOT NULL,
        "ISDistrbFC" numeric NOT NULL,
        "ISDistrbSC" numeric NOT NULL,
        "IsByPrdct" text NULL,
        "ItemType" integer NOT NULL,
        "PriceEdit" text NULL,
        "PrntLnNum" integer NOT NULL,
        "LinePoPrss" text NULL,
        "FreeChrgBP" text NULL,
        "TaxRelev" text NULL,
        "LegalText" text NULL,
        "ThirdParty" text NULL,
        "LicTradNum" text NULL,
        "InvQtyOnly" text NULL,
        "UnencReasn" integer NOT NULL,
        "ShipFromCo" text NULL,
        "ShipFromDe" text NULL,
        "FisrtBin" text NULL,
        "AllocBinC" text NULL,
        "ExpType" text NULL,
        "ExpUUID" text NULL,
        "ExpOpType" text NULL,
        "DIOTNat" text NULL,
        "MYFtype" text NULL,
        "GPBefDisc" numeric NOT NULL,
        "ReturnRsn" smallint NOT NULL,
        "ReturnAct" smallint NOT NULL,
        "StgSeqNum" integer NOT NULL,
        "StgEntry" integer NOT NULL,
        "StgDesc" text NULL,
        "ItmTaxType" text NULL,
        "SacEntry" integer NOT NULL,
        "NCMCode" integer NOT NULL,
        "HsnEntry" integer NOT NULL,
        "OriBAbsEnt" integer NOT NULL,
        "OriBLinNum" integer NOT NULL,
        "OriBDocTyp" integer NOT NULL,
        "IsPrscGood" text NULL,
        "IsCstmAct" text NULL,
        "EncryptIV" text NULL,
        "ExtTaxRate" numeric NOT NULL,
        "ExtTaxSum" numeric NOT NULL,
        "TaxAmtSrc" text NULL,
        "ExtTaxSumF" numeric NOT NULL,
        "ExtTaxSumS" numeric NOT NULL,
        "StdItemId" integer NOT NULL,
        "CommClass" integer NOT NULL,
        "VatExEntry" integer NOT NULL,
        "VatExLN" smallint NOT NULL,
        "NatOfTrans" integer NOT NULL,
        "ISDtCryImp" text NULL,
        "ISDtRgnImp" integer NOT NULL,
        "ISOrCryExp" text NULL,
        "ISOrRgnExp" integer NOT NULL,
        "NVECode" text NULL,
        "PoNum" text NULL,
        "PoItmNum" integer NOT NULL,
        "IndEscala" text NULL,
        "CESTCode" integer NOT NULL,
        "CtrSealQty" numeric NOT NULL,
        "CNJPMan" text NULL,
        "UFFiscBene" text NULL,
        "CUSplit" text NULL,
        "LegalTIMD" text NULL,
        "LegalTTCA" text NULL,
        "LegalTW" text NULL,
        "LegalTCD" text NULL,
        "U_CXS_TDKY" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_U_Negative" numeric NOT NULL,
        "U_Expired" text NULL,
        "U_Qty" text NULL,
        "U_Price" text NULL,
        "U_Unit" text NULL,
        "U_MYANAMRLABEL" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."RIN1" (
        "DocEntry" integer NOT NULL,
        "LineNum" integer NOT NULL,
        "TargetType" integer NOT NULL,
        "TrgetEntry" integer NOT NULL,
        "BaseRef" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "BaseLine" integer NOT NULL,
        "LineStatus" text NULL,
        "ItemCode" text NULL,
        "Dscription" text NULL,
        "Quantity" numeric NOT NULL,
        "ShipDate" timestamp without time zone NULL,
        "OpenQty" numeric NOT NULL,
        "Price" numeric NOT NULL,
        "Currency" text NULL,
        "Rate" numeric NOT NULL,
        "DiscPrcnt" numeric NOT NULL,
        "LineTotal" numeric NOT NULL,
        "TotalFrgn" numeric NOT NULL,
        "OpenSum" numeric NOT NULL,
        "OpenSumFC" numeric NOT NULL,
        "VendorNum" text NULL,
        "SerialNum" text NULL,
        "WhsCode" text NULL,
        "SlpCode" integer NOT NULL,
        "Commission" numeric NOT NULL,
        "TreeType" text NULL,
        "AcctCode" text NULL,
        "TaxStatus" text NULL,
        "GrossBuyPr" numeric NOT NULL,
        "PriceBefDi" numeric NOT NULL,
        "DocDate" timestamp without time zone NULL,
        "Flags" integer NOT NULL,
        "OpenCreQty" numeric NOT NULL,
        "UseBaseUn" text NULL,
        "SubCatNum" text NULL,
        "BaseCard" text NULL,
        "TotalSumSy" numeric NOT NULL,
        "OpenSumSys" numeric NOT NULL,
        "InvntSttus" text NULL,
        "OcrCode" text NULL,
        "Project" text NULL,
        "CodeBars" text NULL,
        "VatPrcnt" numeric NOT NULL,
        "VatGroup" text NULL,
        "PriceAfVAT" numeric NOT NULL,
        "Height1" numeric NOT NULL,
        "Hght1Unit" smallint NOT NULL,
        "Height2" numeric NOT NULL,
        "Hght2Unit" smallint NOT NULL,
        "Width1" numeric NOT NULL,
        "Wdth1Unit" smallint NOT NULL,
        "Width2" numeric NOT NULL,
        "Wdth2Unit" smallint NOT NULL,
        "Length1" numeric NOT NULL,
        "Len1Unit" smallint NOT NULL,
        length2 numeric NOT NULL,
        "Len2Unit" smallint NOT NULL,
        "Volume" numeric NOT NULL,
        "VolUnit" smallint NOT NULL,
        "Weight1" numeric NOT NULL,
        "Wght1Unit" smallint NOT NULL,
        "Weight2" numeric NOT NULL,
        "Wght2Unit" smallint NOT NULL,
        "Factor1" numeric NOT NULL,
        "Factor2" numeric NOT NULL,
        "Factor3" numeric NOT NULL,
        "Factor4" numeric NOT NULL,
        "PackQty" numeric NOT NULL,
        "UpdInvntry" text NULL,
        "BaseDocNum" integer NOT NULL,
        "BaseAtCard" text NULL,
        "SWW" text NULL,
        "VatSum" numeric NOT NULL,
        "VatSumFrgn" numeric NOT NULL,
        "VatSumSy" numeric NOT NULL,
        "FinncPriod" integer NOT NULL,
        "ObjType" text NULL,
        "LogInstanc" integer NOT NULL,
        "BlockNum" text NULL,
        "ImportLog" text NULL,
        "DedVatSum" numeric NOT NULL,
        "DedVatSumF" numeric NOT NULL,
        "DedVatSumS" numeric NOT NULL,
        "IsAqcuistn" text NULL,
        "DistribSum" numeric NOT NULL,
        "DstrbSumFC" numeric NOT NULL,
        "DstrbSumSC" numeric NOT NULL,
        "GrssProfit" numeric NOT NULL,
        "GrssProfSC" numeric NOT NULL,
        "GrssProfFC" numeric NOT NULL,
        "VisOrder" integer NOT NULL,
        "INMPrice" numeric NOT NULL,
        "PoTrgNum" integer NOT NULL,
        "PoTrgEntry" text NULL,
        "DropShip" text NULL,
        "PoLineNum" integer NOT NULL,
        "Address" text NULL,
        "TaxCode" text NULL,
        "TaxType" text NULL,
        "OrigItem" text NULL,
        "BackOrdr" text NULL,
        "FreeTxt" text NULL,
        "PickStatus" text NULL,
        "PickOty" numeric NOT NULL,
        "PickIdNo" integer NOT NULL,
        "TrnsCode" smallint NOT NULL,
        "VatAppld" numeric NOT NULL,
        "VatAppldFC" numeric NOT NULL,
        "VatAppldSC" numeric NOT NULL,
        "BaseQty" numeric NOT NULL,
        "BaseOpnQty" numeric NOT NULL,
        "VatDscntPr" numeric NOT NULL,
        "WtLiable" text NULL,
        "DeferrTax" text NULL,
        "EquVatPer" numeric NOT NULL,
        "EquVatSum" numeric NOT NULL,
        "EquVatSumF" numeric NOT NULL,
        "EquVatSumS" numeric NOT NULL,
        "LineVat" numeric NOT NULL,
        "LineVatlF" numeric NOT NULL,
        "LineVatS" numeric NOT NULL,
        "unitMsr" text NULL,
        "NumPerMsr" numeric NOT NULL,
        "CEECFlag" text NULL,
        "ToStock" numeric NOT NULL,
        "ToDiff" numeric NOT NULL,
        "ExciseAmt" numeric NOT NULL,
        "TaxPerUnit" numeric NOT NULL,
        "TotInclTax" numeric NOT NULL,
        "CountryOrg" text NULL,
        "StckDstSum" numeric NOT NULL,
        "ReleasQtty" numeric NOT NULL,
        "LineType" text NULL,
        "TranType" text NULL,
        "Text" text NULL,
        "OwnerCode" integer NOT NULL,
        "StockPrice" numeric NOT NULL,
        "ConsumeFCT" text NULL,
        "LstByDsSum" numeric NOT NULL,
        "StckINMPr" numeric NOT NULL,
        "LstBINMPr" numeric NOT NULL,
        "StckDstFc" numeric NOT NULL,
        "StckDstSc" numeric NOT NULL,
        "LstByDsFc" numeric NOT NULL,
        "LstByDsSc" numeric NOT NULL,
        "StockSum" numeric NOT NULL,
        "StockSumFc" numeric NOT NULL,
        "StockSumSc" numeric NOT NULL,
        "StckSumApp" numeric NOT NULL,
        "StckAppFc" numeric NOT NULL,
        "StckAppSc" numeric NOT NULL,
        "ShipToCode" text NULL,
        "ShipToDesc" text NULL,
        "StckAppD" numeric NOT NULL,
        "StckAppDFC" numeric NOT NULL,
        "StckAppDSC" numeric NOT NULL,
        "BasePrice" text NULL,
        "GTotal" numeric NOT NULL,
        "GTotalFC" numeric NOT NULL,
        "GTotalSC" numeric NOT NULL,
        "DistribExp" text NULL,
        "DescOW" text NULL,
        "DetailsOW" text NULL,
        "GrossBase" smallint NOT NULL,
        "VatWoDpm" numeric NOT NULL,
        "VatWoDpmFc" numeric NOT NULL,
        "VatWoDpmSc" numeric NOT NULL,
        "CFOPCode" text NULL,
        "CSTCode" text NULL,
        "Usage" integer NOT NULL,
        "TaxOnly" text NULL,
        "WtCalced" text NULL,
        "QtyToShip" numeric NOT NULL,
        "DelivrdQty" numeric NOT NULL,
        "OrderedQty" numeric NOT NULL,
        "CogsOcrCod" text NULL,
        "CiOppLineN" integer NOT NULL,
        "CogsAcct" text NULL,
        "ChgAsmBoMW" text NULL,
        "ActDelDate" timestamp without time zone NULL,
        "OcrCode2" text NULL,
        "OcrCode3" text NULL,
        "OcrCode4" text NULL,
        "OcrCode5" text NULL,
        "TaxDistSum" numeric NOT NULL,
        "TaxDistSFC" numeric NOT NULL,
        "TaxDistSSC" numeric NOT NULL,
        "PostTax" text NULL,
        "Excisable" text NULL,
        "AssblValue" numeric NOT NULL,
        "RG23APart1" integer NOT NULL,
        "RG23APart2" integer NOT NULL,
        "RG23CPart1" integer NOT NULL,
        "RG23CPart2" integer NOT NULL,
        "CogsOcrCo2" text NULL,
        "CogsOcrCo3" text NULL,
        "CogsOcrCo4" text NULL,
        "CogsOcrCo5" text NULL,
        "LnExcised" text NULL,
        "LocCode" integer NOT NULL,
        "StockValue" numeric NOT NULL,
        "GPTtlBasPr" numeric NOT NULL,
        "unitMsr2" text NULL,
        "NumPerMsr2" numeric NOT NULL,
        "SpecPrice" text NULL,
        "CSTfIPI" text NULL,
        "CSTfPIS" text NULL,
        "CSTfCOFINS" text NULL,
        "ExLineNo" text NULL,
        "isSrvCall" text NULL,
        "PQTReqQty" numeric NOT NULL,
        "PQTReqDate" timestamp without time zone NULL,
        "PcDocType" integer NOT NULL,
        "PcQuantity" numeric NOT NULL,
        "LinManClsd" text NULL,
        "VatGrpSrc" text NULL,
        "NoInvtryMv" text NULL,
        "ActBaseEnt" integer NOT NULL,
        "ActBaseLn" integer NOT NULL,
        "ActBaseNum" integer NOT NULL,
        "OpenRtnQty" numeric NOT NULL,
        "AgrNo" integer NOT NULL,
        "AgrLnNum" integer NOT NULL,
        "CredOrigin" text NULL,
        "Surpluses" numeric NOT NULL,
        "DefBreak" numeric NOT NULL,
        "Shortages" numeric NOT NULL,
        "UomEntry" integer NOT NULL,
        "UomEntry2" integer NOT NULL,
        "UomCode" text NULL,
        "UomCode2" text NULL,
        "FromWhsCod" text NULL,
        "NeedQty" text NULL,
        "PartRetire" text NULL,
        "RetireQty" numeric NOT NULL,
        "RetireAPC" numeric NOT NULL,
        "RetirAPCFC" numeric NOT NULL,
        "RetirAPCSC" numeric NOT NULL,
        "InvQty" numeric NOT NULL,
        "OpenInvQty" numeric NOT NULL,
        "EnSetCost" text NULL,
        "RetCost" numeric NOT NULL,
        "Incoterms" integer NOT NULL,
        "TransMod" integer NOT NULL,
        "LineVendor" text NULL,
        "DistribIS" text NULL,
        "ISDistrb" numeric NOT NULL,
        "ISDistrbFC" numeric NOT NULL,
        "ISDistrbSC" numeric NOT NULL,
        "IsByPrdct" text NULL,
        "ItemType" integer NOT NULL,
        "PriceEdit" text NULL,
        "PrntLnNum" integer NOT NULL,
        "LinePoPrss" text NULL,
        "FreeChrgBP" text NULL,
        "TaxRelev" text NULL,
        "LegalText" text NULL,
        "ThirdParty" text NULL,
        "LicTradNum" text NULL,
        "InvQtyOnly" text NULL,
        "UnencReasn" integer NOT NULL,
        "ShipFromCo" text NULL,
        "ShipFromDe" text NULL,
        "FisrtBin" text NULL,
        "AllocBinC" text NULL,
        "ExpType" text NULL,
        "ExpUUID" text NULL,
        "ExpOpType" text NULL,
        "DIOTNat" text NULL,
        "MYFtype" text NULL,
        "GPBefDisc" numeric NOT NULL,
        "ReturnRsn" smallint NOT NULL,
        "ReturnAct" smallint NOT NULL,
        "StgSeqNum" integer NOT NULL,
        "StgEntry" integer NOT NULL,
        "StgDesc" text NULL,
        "ItmTaxType" text NULL,
        "SacEntry" integer NOT NULL,
        "NCMCode" integer NOT NULL,
        "HsnEntry" integer NOT NULL,
        "OriBAbsEnt" integer NOT NULL,
        "OriBLinNum" integer NOT NULL,
        "OriBDocTyp" integer NOT NULL,
        "IsPrscGood" text NULL,
        "IsCstmAct" text NULL,
        "EncryptIV" text NULL,
        "ExtTaxRate" numeric NOT NULL,
        "ExtTaxSum" numeric NOT NULL,
        "TaxAmtSrc" text NULL,
        "ExtTaxSumF" numeric NOT NULL,
        "ExtTaxSumS" numeric NOT NULL,
        "StdItemId" integer NOT NULL,
        "CommClass" integer NOT NULL,
        "VatExEntry" integer NOT NULL,
        "VatExLN" smallint NOT NULL,
        "NatOfTrans" integer NOT NULL,
        "ISDtCryImp" text NULL,
        "ISDtRgnImp" integer NOT NULL,
        "ISOrCryExp" text NULL,
        "ISOrRgnExp" integer NOT NULL,
        "NVECode" text NULL,
        "PoNum" text NULL,
        "PoItmNum" integer NOT NULL,
        "IndEscala" text NULL,
        "CESTCode" integer NOT NULL,
        "CtrSealQty" numeric NOT NULL,
        "CNJPMan" text NULL,
        "UFFiscBene" text NULL,
        "CUSplit" text NULL,
        "LegalTIMD" text NULL,
        "LegalTTCA" text NULL,
        "LegalTW" text NULL,
        "LegalTCD" text NULL,
        "U_CXS_TDKY" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_U_Negative" numeric NOT NULL,
        "U_Expired" text NULL,
        "U_Qty" text NULL,
        "U_Price" text NULL,
        "U_Unit" text NULL,
        "U_MYANAMRLABEL" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."RPD1" (
        "DocEntry" integer NOT NULL,
        "LineNum" integer NOT NULL,
        "TargetType" integer NOT NULL,
        "TrgetEntry" integer NOT NULL,
        "BaseRef" text NULL,
        "BaseType" integer NOT NULL,
        "BaseEntry" integer NOT NULL,
        "BaseLine" integer NOT NULL,
        "LineStatus" text NULL,
        "ItemCode" text NULL,
        "Dscription" text NULL,
        "Quantity" numeric NOT NULL,
        "ShipDate" timestamp without time zone NULL,
        "OpenQty" numeric NOT NULL,
        "Price" numeric NOT NULL,
        "Currency" text NULL,
        "Rate" numeric NOT NULL,
        "DiscPrcnt" numeric NOT NULL,
        "LineTotal" numeric NOT NULL,
        "TotalFrgn" numeric NOT NULL,
        "OpenSum" numeric NOT NULL,
        "OpenSumFC" numeric NOT NULL,
        "VendorNum" text NULL,
        "SerialNum" text NULL,
        "WhsCode" text NULL,
        "SlpCode" integer NOT NULL,
        "Commission" numeric NOT NULL,
        "TreeType" text NULL,
        "AcctCode" text NULL,
        "TaxStatus" text NULL,
        "GrossBuyPr" numeric NOT NULL,
        "PriceBefDi" numeric NOT NULL,
        "DocDate" timestamp without time zone NULL,
        "Flags" integer NOT NULL,
        "OpenCreQty" numeric NOT NULL,
        "UseBaseUn" text NULL,
        "SubCatNum" text NULL,
        "BaseCard" text NULL,
        "TotalSumSy" numeric NOT NULL,
        "OpenSumSys" numeric NOT NULL,
        "InvntSttus" text NULL,
        "OcrCode" text NULL,
        "Project" text NULL,
        "CodeBars" text NULL,
        "VatPrcnt" numeric NOT NULL,
        "VatGroup" text NULL,
        "PriceAfVAT" numeric NOT NULL,
        "Height1" numeric NOT NULL,
        "Hght1Unit" smallint NOT NULL,
        "Height2" numeric NOT NULL,
        "Hght2Unit" smallint NOT NULL,
        "Width1" numeric NOT NULL,
        "Wdth1Unit" smallint NOT NULL,
        "Width2" numeric NOT NULL,
        "Wdth2Unit" smallint NOT NULL,
        "Length1" numeric NOT NULL,
        "Len1Unit" smallint NOT NULL,
        length2 numeric NOT NULL,
        "Len2Unit" smallint NOT NULL,
        "Volume" numeric NOT NULL,
        "VolUnit" smallint NOT NULL,
        "Weight1" numeric NOT NULL,
        "Wght1Unit" smallint NOT NULL,
        "Weight2" numeric NOT NULL,
        "Wght2Unit" smallint NOT NULL,
        "Factor1" numeric NOT NULL,
        "Factor2" numeric NOT NULL,
        "Factor3" numeric NOT NULL,
        "Factor4" numeric NOT NULL,
        "PackQty" numeric NOT NULL,
        "UpdInvntry" text NULL,
        "BaseDocNum" integer NOT NULL,
        "BaseAtCard" text NULL,
        "SWW" text NULL,
        "VatSum" numeric NOT NULL,
        "VatSumFrgn" numeric NOT NULL,
        "VatSumSy" numeric NOT NULL,
        "FinncPriod" integer NOT NULL,
        "ObjType" text NULL,
        "LogInstanc" integer NOT NULL,
        "BlockNum" text NULL,
        "ImportLog" text NULL,
        "DedVatSum" numeric NOT NULL,
        "DedVatSumF" numeric NOT NULL,
        "DedVatSumS" numeric NOT NULL,
        "IsAqcuistn" text NULL,
        "DistribSum" numeric NOT NULL,
        "DstrbSumFC" numeric NOT NULL,
        "DstrbSumSC" numeric NOT NULL,
        "GrssProfit" numeric NOT NULL,
        "GrssProfSC" numeric NOT NULL,
        "GrssProfFC" numeric NOT NULL,
        "VisOrder" integer NOT NULL,
        "INMPrice" numeric NOT NULL,
        "PoTrgNum" integer NOT NULL,
        "PoTrgEntry" text NULL,
        "DropShip" text NULL,
        "PoLineNum" integer NOT NULL,
        "Address" text NULL,
        "TaxCode" text NULL,
        "TaxType" text NULL,
        "OrigItem" text NULL,
        "BackOrdr" text NULL,
        "FreeTxt" text NULL,
        "PickStatus" text NULL,
        "PickOty" numeric NOT NULL,
        "PickIdNo" integer NOT NULL,
        "TrnsCode" smallint NOT NULL,
        "VatAppld" numeric NOT NULL,
        "VatAppldFC" numeric NOT NULL,
        "VatAppldSC" numeric NOT NULL,
        "BaseQty" numeric NOT NULL,
        "BaseOpnQty" numeric NOT NULL,
        "VatDscntPr" numeric NOT NULL,
        "WtLiable" text NULL,
        "DeferrTax" text NULL,
        "EquVatPer" numeric NOT NULL,
        "EquVatSum" numeric NOT NULL,
        "EquVatSumF" numeric NOT NULL,
        "EquVatSumS" numeric NOT NULL,
        "LineVat" numeric NOT NULL,
        "LineVatlF" numeric NOT NULL,
        "LineVatS" numeric NOT NULL,
        "unitMsr" text NULL,
        "NumPerMsr" numeric NOT NULL,
        "CEECFlag" text NULL,
        "ToStock" numeric NOT NULL,
        "ToDiff" numeric NOT NULL,
        "ExciseAmt" numeric NOT NULL,
        "TaxPerUnit" numeric NOT NULL,
        "TotInclTax" numeric NOT NULL,
        "CountryOrg" text NULL,
        "StckDstSum" numeric NOT NULL,
        "ReleasQtty" numeric NOT NULL,
        "LineType" text NULL,
        "TranType" text NULL,
        "Text" text NULL,
        "OwnerCode" integer NOT NULL,
        "StockPrice" numeric NOT NULL,
        "ConsumeFCT" text NULL,
        "LstByDsSum" numeric NOT NULL,
        "StckINMPr" numeric NOT NULL,
        "LstBINMPr" numeric NOT NULL,
        "StckDstFc" numeric NOT NULL,
        "StckDstSc" numeric NOT NULL,
        "LstByDsFc" numeric NOT NULL,
        "LstByDsSc" numeric NOT NULL,
        "StockSum" numeric NOT NULL,
        "StockSumFc" numeric NOT NULL,
        "StockSumSc" numeric NOT NULL,
        "StckSumApp" numeric NOT NULL,
        "StckAppFc" numeric NOT NULL,
        "StckAppSc" numeric NOT NULL,
        "ShipToCode" text NULL,
        "ShipToDesc" text NULL,
        "StckAppD" numeric NOT NULL,
        "StckAppDFC" numeric NOT NULL,
        "StckAppDSC" numeric NOT NULL,
        "BasePrice" text NULL,
        "GTotal" numeric NOT NULL,
        "GTotalFC" numeric NOT NULL,
        "GTotalSC" numeric NOT NULL,
        "DistribExp" text NULL,
        "DescOW" text NULL,
        "DetailsOW" text NULL,
        "GrossBase" smallint NOT NULL,
        "VatWoDpm" numeric NOT NULL,
        "VatWoDpmFc" numeric NOT NULL,
        "VatWoDpmSc" numeric NOT NULL,
        "CFOPCode" text NULL,
        "CSTCode" text NULL,
        "Usage" integer NOT NULL,
        "TaxOnly" text NULL,
        "WtCalced" text NULL,
        "QtyToShip" numeric NOT NULL,
        "DelivrdQty" numeric NOT NULL,
        "OrderedQty" numeric NOT NULL,
        "CogsOcrCod" text NULL,
        "CiOppLineN" integer NOT NULL,
        "CogsAcct" text NULL,
        "ChgAsmBoMW" text NULL,
        "ActDelDate" timestamp without time zone NULL,
        "OcrCode2" text NULL,
        "OcrCode3" text NULL,
        "OcrCode4" text NULL,
        "OcrCode5" text NULL,
        "TaxDistSum" numeric NOT NULL,
        "TaxDistSFC" numeric NOT NULL,
        "TaxDistSSC" numeric NOT NULL,
        "PostTax" text NULL,
        "Excisable" text NULL,
        "AssblValue" numeric NOT NULL,
        "RG23APart1" integer NOT NULL,
        "RG23APart2" integer NOT NULL,
        "RG23CPart1" integer NOT NULL,
        "RG23CPart2" integer NOT NULL,
        "CogsOcrCo2" text NULL,
        "CogsOcrCo3" text NULL,
        "CogsOcrCo4" text NULL,
        "CogsOcrCo5" text NULL,
        "LnExcised" text NULL,
        "LocCode" integer NOT NULL,
        "StockValue" numeric NOT NULL,
        "GPTtlBasPr" numeric NOT NULL,
        "unitMsr2" text NULL,
        "NumPerMsr2" numeric NOT NULL,
        "SpecPrice" text NULL,
        "CSTfIPI" text NULL,
        "CSTfPIS" text NULL,
        "CSTfCOFINS" text NULL,
        "ExLineNo" text NULL,
        "isSrvCall" text NULL,
        "PQTReqQty" numeric NOT NULL,
        "PQTReqDate" timestamp without time zone NULL,
        "PcDocType" integer NOT NULL,
        "PcQuantity" numeric NOT NULL,
        "LinManClsd" text NULL,
        "VatGrpSrc" text NULL,
        "NoInvtryMv" text NULL,
        "ActBaseEnt" integer NOT NULL,
        "ActBaseLn" integer NOT NULL,
        "ActBaseNum" integer NOT NULL,
        "OpenRtnQty" numeric NOT NULL,
        "AgrNo" integer NOT NULL,
        "AgrLnNum" integer NOT NULL,
        "CredOrigin" text NULL,
        "Surpluses" numeric NOT NULL,
        "DefBreak" numeric NOT NULL,
        "Shortages" numeric NOT NULL,
        "UomEntry" integer NOT NULL,
        "UomEntry2" integer NOT NULL,
        "UomCode" text NULL,
        "UomCode2" text NULL,
        "FromWhsCod" text NULL,
        "NeedQty" text NULL,
        "PartRetire" text NULL,
        "RetireQty" numeric NOT NULL,
        "RetireAPC" numeric NOT NULL,
        "RetirAPCFC" numeric NOT NULL,
        "RetirAPCSC" numeric NOT NULL,
        "InvQty" numeric NOT NULL,
        "OpenInvQty" numeric NOT NULL,
        "EnSetCost" text NULL,
        "RetCost" numeric NOT NULL,
        "Incoterms" integer NOT NULL,
        "TransMod" integer NOT NULL,
        "LineVendor" text NULL,
        "DistribIS" text NULL,
        "ISDistrb" numeric NOT NULL,
        "ISDistrbFC" numeric NOT NULL,
        "ISDistrbSC" numeric NOT NULL,
        "IsByPrdct" text NULL,
        "ItemType" integer NOT NULL,
        "PriceEdit" text NULL,
        "PrntLnNum" integer NOT NULL,
        "LinePoPrss" text NULL,
        "FreeChrgBP" text NULL,
        "TaxRelev" text NULL,
        "LegalText" text NULL,
        "ThirdParty" text NULL,
        "LicTradNum" text NULL,
        "InvQtyOnly" text NULL,
        "UnencReasn" integer NOT NULL,
        "ShipFromCo" text NULL,
        "ShipFromDe" text NULL,
        "FisrtBin" text NULL,
        "AllocBinC" text NULL,
        "ExpType" text NULL,
        "ExpUUID" text NULL,
        "ExpOpType" text NULL,
        "DIOTNat" text NULL,
        "MYFtype" text NULL,
        "GPBefDisc" numeric NOT NULL,
        "ReturnRsn" smallint NOT NULL,
        "ReturnAct" smallint NOT NULL,
        "StgSeqNum" integer NOT NULL,
        "StgEntry" integer NOT NULL,
        "StgDesc" text NULL,
        "ItmTaxType" text NULL,
        "SacEntry" integer NOT NULL,
        "NCMCode" integer NOT NULL,
        "HsnEntry" integer NOT NULL,
        "OriBAbsEnt" integer NOT NULL,
        "OriBLinNum" integer NOT NULL,
        "OriBDocTyp" integer NOT NULL,
        "IsPrscGood" text NULL,
        "IsCstmAct" text NULL,
        "EncryptIV" text NULL,
        "ExtTaxRate" numeric NOT NULL,
        "ExtTaxSum" numeric NOT NULL,
        "TaxAmtSrc" text NULL,
        "ExtTaxSumF" numeric NOT NULL,
        "ExtTaxSumS" numeric NOT NULL,
        "StdItemId" integer NOT NULL,
        "CommClass" integer NOT NULL,
        "VatExEntry" integer NOT NULL,
        "VatExLN" smallint NOT NULL,
        "NatOfTrans" integer NOT NULL,
        "ISDtCryImp" text NULL,
        "ISDtRgnImp" integer NOT NULL,
        "ISOrCryExp" text NULL,
        "ISOrRgnExp" integer NOT NULL,
        "NVECode" text NULL,
        "PoNum" text NULL,
        "PoItmNum" integer NOT NULL,
        "IndEscala" text NULL,
        "CESTCode" integer NOT NULL,
        "CtrSealQty" numeric NOT NULL,
        "CNJPMan" text NULL,
        "UFFiscBene" text NULL,
        "CUSplit" text NULL,
        "LegalTIMD" text NULL,
        "LegalTTCA" text NULL,
        "LegalTW" text NULL,
        "LegalTCD" text NULL,
        "U_CXS_TDKY" text NULL,
        "U_CXS_RGCD" text NULL,
        "U_U_Negative" numeric NOT NULL,
        "U_Expired" text NULL,
        "U_Qty" text NULL,
        "U_Price" text NULL,
        "U_Unit" text NULL,
        "U_MYANAMRLABEL" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE sapdata."UGP1" (
        "UgpEntry" integer NOT NULL,
        "UomEntry" integer NOT NULL,
        "AltQty" numeric NULL,
        "BaseQty" numeric NULL,
        "LogInstanc" integer NULL,
        "LineNum" integer NULL,
        "WghtFactor" smallint NULL,
        "UdfFactor" integer NULL,
        "IsActive" text NULL,
        CONSTRAINT "PK_UGP1" PRIMARY KEY ("UgpEntry")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    CREATE TABLE "WTR1" (
        "DocEntry" integer NULL,
        "LineNum" integer NULL,
        "TargetType" integer NULL,
        "TrgetEntry" integer NULL,
        "BaseRef" text NULL,
        "BaseType" integer NULL,
        "BaseEntry" integer NULL,
        "BaseLine" integer NULL,
        "LineStatus" text NULL,
        "ItemCode" text NULL,
        "Dscription" text NULL,
        "Quantity" numeric NULL,
        "ShipDate" timestamp without time zone NULL,
        "OpenQty" numeric NULL,
        "Price" numeric NULL,
        "Currency" text NULL,
        "Rate" numeric NULL,
        "DiscPrcnt" numeric NULL,
        "LineTotal" numeric NULL,
        "TotalFrgn" numeric NULL,
        "OpenSum" numeric NULL,
        "OpenSumFC" numeric NULL,
        "VendorNum" text NULL,
        "SerialNum" text NULL,
        "WhsCode" text NULL,
        "SlpCode" integer NULL,
        "Commission" numeric NULL,
        "TreeType" text NULL,
        "AcctCode" text NULL,
        "TaxStatus" text NULL,
        "GrossBuyPr" numeric NULL,
        "PriceBefDi" numeric NULL,
        "DocDate" timestamp without time zone NULL,
        "Flags" integer NULL,
        "OpenCreQty" numeric NULL,
        "UseBaseUn" text NULL,
        "SubCatNum" text NULL,
        "BaseCard" text NULL,
        "TotalSumSy" numeric NULL,
        "OpenSumSys" numeric NULL,
        "InvntSttus" text NULL,
        "OcrCode" text NULL,
        "Project" text NULL,
        "CodeBars" text NULL,
        "VatPrcnt" numeric NULL,
        "VatGroup" text NULL,
        "PriceAfVAT" numeric NULL,
        "Height1" numeric NULL,
        "Hght1Unit" smallint NOT NULL,
        "Height2" numeric NULL,
        "Hght2Unit" smallint NOT NULL,
        "Width1" numeric NULL,
        "Wdth1Unit" smallint NOT NULL,
        "Width2" numeric NULL,
        "Wdth2Unit" smallint NOT NULL,
        "Length1" numeric NULL,
        "Len1Unit" smallint NOT NULL,
        length2 numeric NULL,
        "Len2Unit" smallint NOT NULL,
        "Volume" numeric NULL,
        "VolUnit" smallint NOT NULL,
        "Weight1" numeric NULL,
        "Wght1Unit" smallint NOT NULL,
        "Weight2" numeric NULL,
        "Wght2Unit" smallint NOT NULL,
        "Factor1" numeric NULL,
        "Factor2" numeric NULL,
        "Factor3" numeric NULL,
        "Factor4" numeric NULL,
        "PackQty" numeric NULL,
        "UpdInvntry" text NULL,
        "BaseDocNum" integer NULL,
        "BaseAtCard" text NULL,
        "SWW" text NULL,
        "VatSum" numeric NULL,
        "VatSumFrgn" numeric NULL,
        "VatSumSy" numeric NULL,
        "FinncPriod" integer NULL,
        "ObjType" text NULL,
        "LogInstanc" integer NULL,
        "BlockNum" text NULL,
        "ImportLog" text NULL,
        "DedVatSum" numeric NULL,
        "DedVatSumF" numeric NULL,
        "DedVatSumS" numeric NULL,
        "IsAqcuistn" text NULL,
        "DistribSum" numeric NULL,
        "DstrbSumFC" numeric NULL,
        "DstrbSumSC" numeric NULL,
        "GrssProfit" numeric NULL,
        "GrssProfSC" numeric NULL,
        "GrssProfFC" numeric NULL,
        "VisOrder" integer NULL,
        "INMPrice" numeric NULL,
        "PoTrgNum" integer NULL,
        "PoTrgEntry" text NULL,
        "DropShip" text NULL,
        "PoLineNum" integer NULL,
        "Address" text NULL,
        "TaxCode" text NULL,
        "TaxType" text NULL,
        "OrigItem" text NULL,
        "BackOrdr" text NULL,
        "FreeTxt" text NULL,
        "PickStatus" text NULL,
        "PickOty" numeric NULL,
        "PickIdNo" integer NULL,
        "TrnsCode" smallint NOT NULL,
        "VatAppld" numeric NULL,
        "VatAppldFC" numeric NULL,
        "VatAppldSC" numeric NULL,
        "BaseQty" numeric NULL,
        "BaseOpnQty" numeric NULL,
        "VatDscntPr" numeric NULL,
        "WtLiable" text NULL,
        "DeferrTax" text NULL,
        "EquVatPer" numeric NULL,
        "EquVatSum" numeric NULL,
        "EquVatSumF" numeric NULL,
        "EquVatSumS" numeric NULL,
        "LineVat" numeric NULL,
        "LineVatlF" numeric NULL,
        "LineVatS" numeric NULL,
        "unitMsr" text NULL,
        "NumPerMsr" numeric NULL,
        "CEECFlag" text NULL,
        "ToStock" numeric NULL,
        "ToDiff" numeric NULL,
        "ExciseAmt" numeric NULL,
        "TaxPerUnit" numeric NULL,
        "TotInclTax" numeric NULL,
        "CountryOrg" text NULL,
        "StckDstSum" numeric NULL,
        "ReleasQtty" numeric NULL,
        "LineType" text NULL,
        "TranType" text NULL,
        "Text" text NULL,
        "OwnerCode" integer NULL,
        "StockPrice" numeric NULL,
        "ConsumeFCT" text NULL,
        "LstByDsSum" numeric NULL,
        "StckINMPr" numeric NULL,
        "LstBINMPr" numeric NULL,
        "StckDstFc" numeric NULL,
        "StckDstSc" numeric NULL,
        "LstByDsFc" numeric NULL,
        "LstByDsSc" numeric NULL,
        "StockSum" numeric NULL,
        "StockSumFc" numeric NULL,
        "StockSumSc" numeric NULL,
        "StckSumApp" numeric NULL,
        "StckAppFc" numeric NULL,
        "StckAppSc" numeric NULL,
        "ShipToCode" text NULL,
        "ShipToDesc" text NULL,
        "StckAppD" numeric NULL,
        "StckAppDFC" numeric NULL,
        "StckAppDSC" numeric NULL,
        "BasePrice" text NULL,
        "GTotal" numeric NULL,
        "GTotalFC" numeric NULL,
        "GTotalSC" numeric NULL,
        "DistribExp" text NULL,
        "DescOW" text NULL,
        "DetailsOW" text NULL,
        "GrossBase" smallint NOT NULL,
        "VatWoDpm" numeric NULL,
        "VatWoDpmFc" numeric NULL,
        "VatWoDpmSc" numeric NULL,
        "CFOPCode" text NULL,
        "CSTCode" text NULL,
        "Usage" integer NULL,
        "TaxOnly" text NULL,
        "WtCalced" text NULL,
        "QtyToShip" numeric NULL,
        "DelivrdQty" numeric NULL,
        "OrderedQty" numeric NULL,
        "CogsOcrCod" text NULL,
        "CiOppLineN" integer NULL,
        "CogsAcct" text NULL,
        "ChgAsmBoMW" text NULL,
        "ActDelDate" timestamp without time zone NULL,
        "OcrCode2" text NULL,
        "OcrCode3" text NULL,
        "OcrCode4" text NULL,
        "OcrCode5" text NULL,
        "TaxDistSum" numeric NULL,
        "TaxDistSFC" numeric NULL,
        "TaxDistSSC" numeric NULL,
        "PostTax" text NULL,
        "Excisable" text NULL,
        "AssblValue" numeric NULL,
        "RG23APart1" integer NULL,
        "RG23APart2" integer NULL,
        "RG23CPart1" integer NULL,
        "RG23CPart2" integer NULL,
        "CogsOcrCo2" text NULL,
        "CogsOcrCo3" text NULL,
        "CogsOcrCo4" text NULL,
        "CogsOcrCo5" text NULL,
        "LnExcised" text NULL,
        "LocCode" integer NULL,
        "StockValue" numeric NULL,
        "GPTtlBasPr" numeric NULL,
        "unitMsr2" text NULL,
        "NumPerMsr2" numeric NULL,
        "SpecPrice" text NULL,
        "CSTfIPI" text NULL,
        "CSTfPIS" text NULL,
        "CSTfCOFINS" text NULL,
        "ExLineNo" text NULL,
        "isSrvCall" text NULL,
        "PQTReqQty" numeric NULL,
        "PQTReqDate" timestamp without time zone NULL,
        "PcDocType" integer NULL,
        "PcQuantity" numeric NULL,
        "LinManClsd" text NULL,
        "VatGrpSrc" text NULL,
        "NoInvtryMv" text NULL,
        "ActBaseEnt" integer NULL,
        "ActBaseLn" integer NULL,
        "ActBaseNum" integer NULL,
        "OpenRtnQty" numeric NULL,
        "AgrNo" integer NULL,
        "AgrLnNum" integer NULL,
        "CredOrigin" text NULL,
        "Surpluses" numeric NULL,
        "DefBreak" numeric NULL,
        "Shortages" numeric NULL,
        "UomEntry" integer NULL,
        "UomEntry2" integer NULL,
        "UomCode" text NULL,
        "UomCode2" text NULL,
        "FromWhsCod" text NULL,
        "NeedQty" text NULL,
        "PartRetire" text NULL,
        "RetireQty" numeric NULL,
        "RetireAPC" numeric NULL,
        "RetirAPCFC" numeric NULL,
        "RetirAPCSC" numeric NULL,
        "InvQty" numeric NULL,
        "OpenInvQty" numeric NULL,
        "EnSetCost" text NULL,
        "RetCost" numeric NULL,
        "Incoterms" integer NULL,
        "TransMod" integer NULL,
        "LineVendor" text NULL,
        "DistribIS" text NULL,
        "ISDistrb" numeric NULL,
        "ISDistrbFC" numeric NULL,
        "ISDistrbSC" numeric NULL,
        "IsByPrdct" text NULL,
        "ItemType" integer NULL,
        "PriceEdit" text NULL,
        "PrntLnNum" integer NULL,
        "LinePoPrss" text NULL,
        "FreeChrgBP" text NULL,
        "TaxRelev" text NULL,
        "LegalText" text NULL,
        "ThirdParty" text NULL,
        "LicTradNum" text NULL,
        "InvQtyOnly" text NULL,
        "UnencReasn" integer NULL,
        "ShipFromCo" text NULL,
        "ShipFromDe" text NULL,
        "FisrtBin" text NULL,
        "AllocBinC" text NULL,
        "ExpType" text NULL,
        "ExpUUID" text NULL,
        "ExpOpType" text NULL,
        "DIOTNat" text NULL,
        "MYFtype" text NULL,
        "GPBefDisc" numeric NULL,
        "ReturnRsn" smallint NOT NULL,
        "ReturnAct" smallint NOT NULL,
        "StgSeqNum" integer NULL,
        "StgEntry" integer NULL,
        "StgDesc" text NULL,
        "ItmTaxType" text NULL,
        "SacEntry" integer NULL,
        "NCMCode" integer NULL,
        "HsnEntry" integer NULL,
        "OriBAbsEnt" integer NULL,
        "OriBLinNum" integer NULL,
        "OriBDocTyp" integer NULL,
        "IsPrscGood" text NULL,
        "IsCstmAct" text NULL,
        "EncryptIV" text NULL,
        "ExtTaxRate" numeric NULL,
        "ExtTaxSum" numeric NULL,
        "TaxAmtSrc" text NULL,
        "ExtTaxSumF" numeric NULL,
        "ExtTaxSumS" numeric NULL,
        "StdItemId" integer NULL,
        "CommClass" integer NULL,
        "VatExEntry" integer NULL,
        "VatExLN" smallint NOT NULL,
        "NatOfTrans" integer NULL,
        "ISDtCryImp" text NULL,
        "ISDtRgnImp" integer NULL,
        "ISOrCryExp" text NULL,
        "ISOrRgnExp" integer NULL,
        "NVECode" text NULL,
        "PoNum" text NULL,
        "PoItmNum" integer NULL,
        "IndEscala" text NULL,
        "CESTCode" integer NULL,
        "CtrSealQty" numeric NULL,
        "CNJPMan" text NULL,
        "UFFiscBene" text NULL,
        "CUSplit" text NULL,
        "LegalTIMD" text NULL,
        "LegalTTCA" text NULL,
        "LegalTW" text NULL,
        "LegalTCD" text NULL,
        "RevCharge" text NULL
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317112037_Initial1') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220317112037_Initial1', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN length2 DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Width2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Width1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "WghtUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Wght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Weight2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Weight1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Wdth2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Wdth1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Volume" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "VolUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "UserSign2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "UserSign" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "UpdateDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "UomEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Length1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Len2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Len1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Hght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Hght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Height2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "Height1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "EwbUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "CreateDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317124814_initial2') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220317124814_initial2', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN length2 DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Width2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Width1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Weight2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Weight1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Volume" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VisOrder" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatWoDpmSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatWoDpmFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatWoDpm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatSumFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatExEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatDscntPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatAppldSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatAppldFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatAppld" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Usage" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "UomEntry2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "UomEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "UnencReasn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "U_U_Negative" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TrgetEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TransMod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TotalSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TotalFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TotInclTax" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ToStock" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ToDiff" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TaxPerUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TaxDistSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TaxDistSSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TaxDistSFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TargetType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Surpluses" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StockValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StockSumSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StockSumFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StockSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StockPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StgSeqNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StgEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StdItemId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StckSumApp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StckINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StckDstSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StckDstSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StckDstFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StckAppSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StckAppFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StckAppDSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StckAppDFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "StckAppD" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Shortages" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "SacEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "RetireQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "RetireAPC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "RetirAPCSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "RetirAPCFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "RetCost" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ReleasQtty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Rate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "RG23CPart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "RG23CPart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "RG23APart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "RG23APart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Quantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "QtyToShip" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PrntLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PriceBefDi" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PriceAfVAT" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Price" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PoTrgNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PoLineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PoItmNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PickOty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PickIdNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PcQuantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PcDocType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PackQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "PQTReqQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OriBLinNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OriBDocTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OriBAbsEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OrderedQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OpenSumSys" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OpenSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OpenSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OpenRtnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OpenQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OpenInvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "OpenCreQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "NumPerMsr2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "NumPerMsr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "NatOfTrans" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "NCMCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LstByDsSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LstByDsSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LstByDsFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LstBINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LocCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LineVatlF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LineVatS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LineVat" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LineTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "LineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Length1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ItemType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "InvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Incoterms" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ISOrRgnExp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ISDtRgnImp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ISDistrbSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ISDistrbFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ISDistrb" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "INMPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "HsnEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Height2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Height1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GrssProfit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GrssProfSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GrssProfFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GrossBuyPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GTotalSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GTotalFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GPTtlBasPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GPBefDisc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Factor4" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Factor3" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Factor2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Factor1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ExtTaxSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ExtTaxSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ExtTaxSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ExtTaxRate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ExciseAmt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "EquVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "EquVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "EquVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "EquVatPer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DstrbSumSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DstrbSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DocEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DistribSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DiscPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DelivrdQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DefBreak" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DedVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DedVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DedVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "CtrSealQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Commission" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "CommClass" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "CiOppLineN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "CESTCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "BaseQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "BaseOpnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "BaseLine" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "BaseDocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "AssblValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "AgrLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ActBaseNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ActBaseLn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ActBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN length2 DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Width2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Width1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Weight2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Weight1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Volume" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VisOrder" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatWoDpmSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatWoDpmFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatWoDpm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatSumFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatExEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatDscntPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatAppldSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatAppldFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatAppld" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Usage" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "UomEntry2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "UomEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "UnencReasn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "U_U_Negative" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TrgetEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TransMod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TotalSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TotalFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TotInclTax" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ToStock" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ToDiff" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TaxPerUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TaxDistSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TaxDistSSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TaxDistSFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TargetType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Surpluses" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StockValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StockSumSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StockSumFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StockSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StockPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StgSeqNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StgEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StdItemId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StckSumApp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StckINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StckDstSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StckDstSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StckDstFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StckAppSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StckAppFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StckAppDSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StckAppDFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "StckAppD" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Shortages" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "SacEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "RetireQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "RetireAPC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "RetirAPCSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "RetirAPCFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "RetCost" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ReleasQtty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Rate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "RG23CPart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "RG23CPart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "RG23APart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "RG23APart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Quantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "QtyToShip" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PrntLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PriceBefDi" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PriceAfVAT" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Price" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PoTrgNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PoLineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PoItmNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PickOty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PickIdNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PcQuantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PcDocType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PackQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "PQTReqQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OriBLinNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OriBDocTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OriBAbsEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OrderedQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OpenSumSys" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OpenSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OpenSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OpenRtnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OpenQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OpenInvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "OpenCreQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "NumPerMsr2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "NumPerMsr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "NatOfTrans" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "NCMCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LstByDsSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LstByDsSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LstByDsFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LstBINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LocCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LineVatlF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LineVatS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LineVat" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LineTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "LineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Length1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ItemType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "InvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Incoterms" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ISOrRgnExp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ISDtRgnImp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ISDistrbSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ISDistrbFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ISDistrb" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "INMPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "HsnEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Height2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Height1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GrssProfit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GrssProfSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GrssProfFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GrossBuyPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GTotalSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GTotalFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GPTtlBasPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GPBefDisc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Factor4" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Factor3" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Factor2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Factor1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ExtTaxSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ExtTaxSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ExtTaxSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ExtTaxRate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ExciseAmt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "EquVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "EquVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "EquVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "EquVatPer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DstrbSumSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DstrbSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DocEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DistribSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DiscPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DelivrdQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DefBreak" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DedVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DedVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DedVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "CtrSealQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Commission" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "CommClass" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "CiOppLineN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "CESTCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "BaseQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "BaseOpnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "BaseLine" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "BaseDocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "AssblValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "AgrLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ActBaseNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ActBaseLn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ActBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN length2 DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Width2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Width1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Weight2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Weight1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Volume" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VisOrder" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatWoDpmSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatWoDpmFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatWoDpm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatSumFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatExEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatDscntPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatAppldSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatAppldFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatAppld" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Usage" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "UomEntry2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "UomEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "UnencReasn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "U_U_Negative" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TrgetEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TransMod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TotalSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TotalFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TotInclTax" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ToStock" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ToDiff" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TaxPerUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TaxDistSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TaxDistSSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TaxDistSFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TargetType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Surpluses" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StockValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StockSumSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StockSumFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StockSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StockPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StgSeqNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StgEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StdItemId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StckSumApp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StckINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StckDstSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StckDstSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StckDstFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StckAppSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StckAppFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StckAppDSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StckAppDFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "StckAppD" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Shortages" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "SacEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "RetireQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "RetireAPC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "RetirAPCSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "RetirAPCFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "RetCost" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ReleasQtty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Rate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "RG23CPart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "RG23CPart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "RG23APart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "RG23APart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Quantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "QtyToShip" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PrntLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PriceBefDi" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PriceAfVAT" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Price" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PoTrgNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PoLineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PoItmNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PickOty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PickIdNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PcQuantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PcDocType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PackQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "PQTReqQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OriBLinNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OriBDocTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OriBAbsEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OrderedQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OpenSumSys" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OpenSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OpenSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OpenRtnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OpenQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OpenInvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "OpenCreQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "NumPerMsr2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "NumPerMsr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "NatOfTrans" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "NCMCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LstByDsSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LstByDsSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LstByDsFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LstBINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LocCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LineVatlF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LineVatS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LineVat" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LineTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "LineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Length1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ItemType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "InvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Incoterms" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ISOrRgnExp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ISDtRgnImp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ISDistrbSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ISDistrbFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ISDistrb" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "INMPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "HsnEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Height2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Height1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GrssProfit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GrssProfSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GrssProfFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GrossBuyPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GTotalSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GTotalFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GPTtlBasPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GPBefDisc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Factor4" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Factor3" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Factor2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Factor1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ExtTaxSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ExtTaxSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ExtTaxSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ExtTaxRate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ExciseAmt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "EquVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "EquVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "EquVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "EquVatPer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DstrbSumSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DstrbSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DocEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DistribSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DiscPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DelivrdQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DefBreak" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DedVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DedVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DedVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "CtrSealQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Commission" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "CommClass" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "CiOppLineN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "CESTCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "BaseQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "BaseOpnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "BaseLine" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "BaseDocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "AssblValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "AgrLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ActBaseNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ActBaseLn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ActBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN length2 DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Width2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Width1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Weight2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Weight1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Volume" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VisOrder" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatWoDpmSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatWoDpmFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatWoDpm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatSumFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatExEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatDscntPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatAppldSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatAppldFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatAppld" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Usage" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "UomEntry2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "UomEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "UnencReasn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "U_U_Negative" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TrgetEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TransMod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TotalSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TotalFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TotInclTax" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ToStock" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ToDiff" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TaxPerUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TaxDistSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TaxDistSSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TaxDistSFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TargetType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Surpluses" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StockValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StockSumSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StockSumFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StockSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StockPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StgSeqNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StgEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StdItemId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StckSumApp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StckINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StckDstSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StckDstSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StckDstFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StckAppSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StckAppFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StckAppDSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StckAppDFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "StckAppD" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Shortages" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "SacEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "RetireQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "RetireAPC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "RetirAPCSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "RetirAPCFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "RetCost" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ReleasQtty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Rate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "RG23CPart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "RG23CPart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "RG23APart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "RG23APart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Quantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "QtyToShip" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PrntLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PriceBefDi" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PriceAfVAT" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Price" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PoTrgNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PoLineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PoItmNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PickOty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PickIdNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PcQuantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PcDocType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PackQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "PQTReqQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OriBLinNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OriBDocTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OriBAbsEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OrderedQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OpenSumSys" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OpenSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OpenSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OpenRtnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OpenQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OpenInvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "OpenCreQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "NumPerMsr2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "NumPerMsr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "NatOfTrans" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "NCMCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LstByDsSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LstByDsSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LstByDsFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LstBINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LocCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LineVatlF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LineVatS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LineVat" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LineTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "LineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Length1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ItemType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "InvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Incoterms" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ISOrRgnExp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ISDtRgnImp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ISDistrbSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ISDistrbFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ISDistrb" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "INMPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "HsnEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Height2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Height1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GrssProfit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GrssProfSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GrssProfFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GrossBuyPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GTotalSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GTotalFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GPTtlBasPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GPBefDisc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Factor4" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Factor3" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Factor2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Factor1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ExtTaxSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ExtTaxSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ExtTaxSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ExtTaxRate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ExciseAmt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "EquVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "EquVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "EquVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "EquVatPer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DstrbSumSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DstrbSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DocEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DistribSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DiscPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DelivrdQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DefBreak" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DedVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DedVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DedVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "CtrSealQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Commission" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "CommClass" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "CiOppLineN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "CESTCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "BaseQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "BaseOpnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "BaseLine" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "BaseDocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "AssblValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "AgrLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ActBaseNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ActBaseLn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ActBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AcqDate" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AssVal4WTR" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AssblValue" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AssetAmnt1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AssetAmnt2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AssetClass" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AssetGroup" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AssetItem" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AssetRmk1" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AssetRmk2" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AssetSerNo" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AsstStatus" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AtcEntry" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Attachment" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AutoBatch" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "AvgPrice" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BHeight1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BHeight2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BHght1Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BHght2Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BLen1Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BLen2Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BLength1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BVolUnit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BVolume" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BWdth1Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BWdth2Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BWeight1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BWeight2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BWght1Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BWght2Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BWidth1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BWidth2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BaseUnit" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BeverGrpC" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BeverTM" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BeverTblC" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Blength2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BlncTrnsfr" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BlockOut" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "BuyUnitMsr" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ByWh" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CESTCode" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Canceled" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CapDate" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CardCode" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Cession" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ChapterID" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CntUnitMsr" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CodeBars" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CommClass" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CommisGrp" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CommisPcnt" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CommisSum" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CompoWH" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Consig" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Counted" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CountryOrg" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CreateDate" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CreateTS" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CstGrpCode" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CstmActing" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CtrSealQty" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "CustomPer" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "DNFEntry" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "DataSource" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "DataVers" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "DeacAftUL" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Deleted" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "DeprGroup" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "DfltWH" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "DocEntry" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "DscountCod" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ECExpAcc" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ECInAcct" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Employee" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "EnAstSeri" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "EvalSystem" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ExcFixAmnt" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ExcImpQUoM" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ExcRate" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Excisable" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ExitCur" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ExitPrice" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ExitWH" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ExmptIncom" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ExpensAcct" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ExportCode" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "FREE" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "FREE1" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "FirmCode" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "FixCurrCms" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "FrgnExpAcc" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "FrgnInAcct" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "FrgnName" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "FrozenComm" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "FuelCode" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "GLMethod" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "GLPickMeth" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "GSTRelevnt" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "GstTaxCtg" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "INUoMEntry" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ISvcCode" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "IUoMEntry" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "IWeight1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "IWeight2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "IWght1Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "IWght2Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Imported" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "InCostRoll" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "IncomeAcct" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "IndirctTax" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "InventryNo" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "InvntItem" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "InvntryUom" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "IsCommited" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "IssueMthd" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "IssuePriBy" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ItemClass" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ItemName" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ItemType" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ItmsGrpCod" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "LastPurCur" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "LastPurDat" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "LastPurPrc" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "LeadTime" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "LegalText" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "LinkRsc" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Location" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "LogInstanc" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "LstEvlDate" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "LstEvlPric" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "LstSalDate" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ManBtchNum" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ManOutOnly" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ManSerNum" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "MatGrp" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "MatType" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "MaxLevel" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "MgrByQty" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "MinLevel" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "MinOrdrQty" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "MngMethod" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "MnufctTime" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "NCMCode" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "NVECode" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "NoDiscount" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "NotifyASN" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "NumInBuy" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "NumInCnt" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "NumInSale" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Number" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "OSvcCode" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ObjType" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "OnHand" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "OnHldPert" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "OnOrder" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "OneBOneRec" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "OpenBlnc" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "OrdrIntrvl" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "OrdrMulti" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PUoMEntry" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Phantom" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PicturName" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PlaningSys" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PrchseItem" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PrcrmntMtd" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PrdStdCst" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PriceUnit" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PricingPrc" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ProAssNum" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ProductSrc" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PurFactor1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PurFactor2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PurFactor3" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PurFactor4" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PurFormula" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PurPackMsr" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "PurPackUn" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup1" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup10" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup11" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup12" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup13" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup14" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup15" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup16" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup17" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup18" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup19" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup2" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup20" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup21" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup22" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup23" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup24" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup25" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup26" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup27" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup28" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup29" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup3" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup30" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup31" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup32" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup33" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup34" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup35" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup36" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup37" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup38" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup39" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup4" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup40" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup41" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup42" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup43" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup44" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup45" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup46" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup47" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup48" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup49" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup5" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup50" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup51" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup52" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup53" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup54" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup55" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup56" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup57" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup58" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup59" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup6" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup60" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup61" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup62" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup63" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup64" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup7" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup8" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QryGroup9" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "QueryGroup" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ReorderPnt" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ReorderQty" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "RetDate" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "RetilrTax" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "RuleCode" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SACEntry" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SCNCounter" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SHeight1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SHeight2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SHght1Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SHght2Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SLen1Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SLen2Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SLength1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SOIExc" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SUoMEntry" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SVolUnit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SVolume" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SWW" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SWdth1Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SWdth2Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SWeight1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SWeight2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SWght1Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SWght2Unit" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SWidth1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SWidth2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SalFactor1" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SalFactor2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SalFactor3" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SalFactor4" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SalFormula" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SalPackMsr" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SalPackUn" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SalUnitMsr" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ScsCode" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SellItem" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SerialNum" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Series" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ServiceCtg" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ServiceGrp" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ShipType" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Slength2" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SouVirAsst" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SpProdType" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SpcialDisc" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Spec" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "StatAsset" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "StdItemId" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "StockValue" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "SuppCatNum" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "TNVED" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "TaxCatCode" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "TaxCodeAP" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "TaxCodeAR" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "TaxCtg" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "TaxType" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Technician" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ToleranDay" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "TrackSales" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "Transfered" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "TreeQty" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "TreeType" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_2ndNewItemFees" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CUOMC" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CUOMN" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CXS_ACID" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CXS_ISDT" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CXS_ISGC" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CXS_ISTO" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CXS_MDFD" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CXS_NSPO" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CXS_REIT" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CXS_SLDC" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CXS_TIPR" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_CXS_ZVIT" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Expired" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_MeetingInactiveDate" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_POTYPE" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_ReasonCodeDaily" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_ReasonCodeItem" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_RefItemCode" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Remak7" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Remark1" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Remark10" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Remark2" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Remark3" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Remark4" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Remark5" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Remark6" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Remark8" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Remark9" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_SpecialItem" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_StockUOM" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_Type" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_UOM" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_UOMCo" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_ramark31" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark11" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark12" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark13" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark14" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark15" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark16" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark17" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark18" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark19" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark20" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark21" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark22" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark23" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark24" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark25" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark26" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark27" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark28" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark29" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark30" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark32" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark33" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark34" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark35" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark36" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark37" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark38" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark39" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark40" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark41" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark42" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark43" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark44" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "U_remark45" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "UgpEntry" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "UpdateDate" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "UpdateTS" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "UserSign" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "UserSign2" integer NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "UserText" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "VATLiable" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "ValidComm" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "VatGourpSa" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "VatGroupPu" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "VirtAstItm" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "WTLiable" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "WarrntTmpl" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "WasCounted" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "WholSlsTax" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "frozenFor" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "frozenFrom" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "frozenTo" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "onHldLimt" numeric NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "validFor" text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "validFrom" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OITM" ADD "validTo" timestamp without time zone NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE "OCRG" ALTER COLUMN "UserSign" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE "OCRG" ALTER COLUMN "PriceList" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE "OCRG" ALTER COLUMN "GroupCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "validTo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "validFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "frozenTo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "frozenFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "eBuildnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "VendTID" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "VatResDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "VatResCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "ValidUntil" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "UserSign2" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "UserSign2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "UserSign" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "UserSign" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "UpdateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "UpdateDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "U_Freight" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "TspLine" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "TspEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "TpCusPres" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "TolrncDays" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "TolrncDays" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "ToDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "Territory" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "SysMatchNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "SignDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "ShipType" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "ShipType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "Series" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "SPPCounter" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "SPGCounter" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "SPGCounter" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "SCNCounter" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "SCNCounter" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "Remark1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "PyBlckDesc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "Priority" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "OrdersBal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "OrderBalSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "OrderBalFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "OprCount" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "Number" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "NTSWebSite" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "NTSWebSite" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "MltMthNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "MinIntrst" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "MaxAmount" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "MainUsage" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "MTHCounter" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "ListNum" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "ListNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "LangCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "IntrstRate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "IndustryC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "InMatchNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "HousActKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "GroupNum" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "GroupNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "GroupCode" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "GroupCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "FromDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "FormCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "ExpnPrfFnd" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "ExpireDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "ExMatchNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "EDocExpFrm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "EBVatExCau" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DunnLevel" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DunnDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DscntObjct" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DscntObjct" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DocEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "Discount" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DflBankKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DflAgrmnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DfTcnician" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DebtLine" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DdtKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DdgKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DdctPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DateTill" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DateFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DataVers" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DNotesBal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DNoteBalSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "DNoteBalFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CreditLine" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CreditCard" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CreditCard" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CreateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CreateDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CpnNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "Commission" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CommGrCode" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CommGrCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "Chrctrstcs" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "ChecksBal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CardValid" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CDPNum" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "CDPNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "BalanceSys" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "BalanceFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "Balance" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "BNKCounter" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "AvrageLate" TYPE integer;
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "AvrageLate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."OCRD" ALTER COLUMN "AtcEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."ITM9" ALTER COLUMN "UomEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."ITM9" ALTER COLUMN "PriceList" TYPE integer;
    ALTER TABLE sapdata."ITM9" ALTER COLUMN "PriceList" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."ITM9" ALTER COLUMN "Price" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."ITM9" ALTER COLUMN "Factor2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."ITM9" ALTER COLUMN "Factor1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."ITM9" ALTER COLUMN "Factor" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."ITM9" ALTER COLUMN "AddPrice2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."ITM9" ALTER COLUMN "AddPrice1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN length2 DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Width2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Width1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Weight2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Weight1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Volume" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VisOrder" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatWoDpmSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatWoDpmFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatWoDpm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatSumFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatExEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatDscntPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatAppldSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatAppldFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatAppld" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Usage" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "UomEntry2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "UomEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "UnencReasn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "U_U_Negative" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TrgetEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TransMod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TotalSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TotalFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TotInclTax" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ToStock" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ToDiff" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TaxPerUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TaxDistSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TaxDistSSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TaxDistSFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TargetType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Surpluses" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StockValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StockSumSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StockSumFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StockSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StockPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StgSeqNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StgEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StdItemId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StckSumApp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StckINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StckDstSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StckDstSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StckDstFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StckAppSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StckAppFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StckAppDSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StckAppDFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "StckAppD" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Shortages" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "SacEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "RetireQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "RetireAPC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "RetirAPCSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "RetirAPCFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "RetCost" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ReleasQtty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Rate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "RG23CPart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "RG23CPart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "RG23APart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "RG23APart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Quantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "QtyToShip" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PrntLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PriceBefDi" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PriceAfVAT" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Price" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PoTrgNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PoLineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PoItmNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PickOty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PickIdNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PcQuantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PcDocType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PackQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "PQTReqQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OriBLinNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OriBDocTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OriBAbsEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OrderedQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OpenSumSys" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OpenSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OpenSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OpenRtnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OpenQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OpenInvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "OpenCreQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "NumPerMsr2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "NumPerMsr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "NatOfTrans" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "NCMCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LstByDsSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LstByDsSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LstByDsFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LstBINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LocCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LineVatlF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LineVatS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LineVat" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LineTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "LineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Length1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ItemType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "InvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Incoterms" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ISOrRgnExp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ISDtRgnImp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ISDistrbSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ISDistrbFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ISDistrb" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "INMPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "HsnEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Height2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Height1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GrssProfit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GrssProfSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GrssProfFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GrossBuyPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GTotalSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GTotalFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GPTtlBasPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GPBefDisc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Factor4" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Factor3" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Factor2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Factor1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ExtTaxSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ExtTaxSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ExtTaxSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ExtTaxRate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ExciseAmt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "EquVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "EquVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "EquVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "EquVatPer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DstrbSumSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DstrbSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DocEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DistribSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DiscPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DelivrdQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DefBreak" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DedVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DedVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DedVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "CtrSealQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Commission" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "CommClass" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "CiOppLineN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "CESTCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "BaseQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "BaseOpnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "BaseLine" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "BaseDocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "AssblValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "AgrLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ActBaseNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ActBaseLn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ActBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN length2 DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Width2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Width1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Weight2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Weight1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Volume" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VisOrder" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatWoDpmSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatWoDpmFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatWoDpm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatSumFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatExEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatDscntPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatAppldSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatAppldFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatAppld" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Usage" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "UomEntry2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "UomEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "UnencReasn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "U_U_Negative" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TrgetEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TransMod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TotalSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TotalFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TotInclTax" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ToStock" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ToDiff" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TaxPerUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TaxDistSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TaxDistSSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TaxDistSFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TargetType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Surpluses" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StockValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StockSumSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StockSumFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StockSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StockPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StgSeqNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StgEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StdItemId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StckSumApp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StckINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StckDstSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StckDstSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StckDstFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StckAppSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StckAppFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StckAppDSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StckAppDFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "StckAppD" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Shortages" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "SacEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "RetireQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "RetireAPC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "RetirAPCSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "RetirAPCFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "RetCost" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ReleasQtty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Rate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "RG23CPart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "RG23CPart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "RG23APart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "RG23APart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Quantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "QtyToShip" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PrntLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PriceBefDi" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PriceAfVAT" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Price" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PoTrgNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PoLineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PoItmNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PickOty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PickIdNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PcQuantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PcDocType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PackQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "PQTReqQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OriBLinNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OriBDocTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OriBAbsEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OrderedQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OpenSumSys" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OpenSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OpenSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OpenRtnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OpenQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OpenInvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "OpenCreQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "NumPerMsr2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "NumPerMsr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "NatOfTrans" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "NCMCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LstByDsSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LstByDsSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LstByDsFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LstBINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LocCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LineVatlF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LineVatS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LineVat" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LineTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "LineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Length1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ItemType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "InvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Incoterms" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ISOrRgnExp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ISDtRgnImp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ISDistrbSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ISDistrbFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ISDistrb" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "INMPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "HsnEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Height2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Height1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GrssProfit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GrssProfSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GrssProfFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GrossBuyPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GTotalSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GTotalFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GPTtlBasPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GPBefDisc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Factor4" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Factor3" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Factor2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Factor1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ExtTaxSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ExtTaxSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ExtTaxSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ExtTaxRate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ExciseAmt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "EquVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "EquVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "EquVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "EquVatPer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DstrbSumSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DstrbSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DocEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DistribSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DiscPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DelivrdQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DefBreak" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DedVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DedVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DedVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "CtrSealQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Commission" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "CommClass" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "CiOppLineN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "CESTCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "BaseQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "BaseOpnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "BaseLine" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "BaseDocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "AssblValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "AgrLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ActBaseNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ActBaseLn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ActBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN length2 DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Width2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Width1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Weight2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Weight1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Volume" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VisOrder" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatWoDpmSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatWoDpmFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatWoDpm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatSumFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatExEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatDscntPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatAppldSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatAppldFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatAppld" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Usage" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "UomEntry2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "UomEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "UnencReasn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "U_U_Negative" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TrgetEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TransMod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TotalSumSy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TotalFrgn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TotInclTax" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ToStock" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ToDiff" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TaxPerUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TaxDistSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TaxDistSSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TaxDistSFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TargetType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Surpluses" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StockValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StockSumSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StockSumFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StockSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StockPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StgSeqNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StgEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StdItemId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StckSumApp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StckINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StckDstSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StckDstSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StckDstFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StckAppSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StckAppFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StckAppDSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StckAppDFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "StckAppD" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Shortages" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "SacEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "RetireQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "RetireAPC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "RetirAPCSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "RetirAPCFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "RetCost" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ReleasQtty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Rate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "RG23CPart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "RG23CPart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "RG23APart2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "RG23APart1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Quantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "QtyToShip" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PrntLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PriceBefDi" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PriceAfVAT" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Price" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PoTrgNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PoLineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PoItmNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PickOty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PickIdNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PcQuantity" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PcDocType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PackQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "PQTReqQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OriBLinNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OriBDocTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OriBAbsEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OrderedQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OpenSumSys" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OpenSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OpenSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OpenRtnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OpenQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OpenInvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "OpenCreQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "NumPerMsr2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "NumPerMsr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "NatOfTrans" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "NCMCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LstByDsSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LstByDsSc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LstByDsFc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LstBINMPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LocCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LineVatlF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LineVatS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LineVat" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LineTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "LineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Length1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ItemType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "InvQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Incoterms" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ISOrRgnExp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ISDtRgnImp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ISDistrbSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ISDistrbFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ISDistrb" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "INMPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "HsnEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Height2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Height1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GrssProfit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GrssProfSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GrssProfFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GrossBuyPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GTotalSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GTotalFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GTotal" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GPTtlBasPr" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GPBefDisc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Factor4" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Factor3" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Factor2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Factor1" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ExtTaxSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ExtTaxSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ExtTaxSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ExtTaxRate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ExciseAmt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "EquVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "EquVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "EquVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "EquVatPer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DstrbSumSC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DstrbSumFC" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DocEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DistribSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DiscPrcnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DelivrdQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DefBreak" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DedVatSumS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DedVatSumF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DedVatSum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "CtrSealQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Commission" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "CommClass" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "CiOppLineN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "CESTCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "BaseQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "BaseOpnQty" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "BaseLine" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "BaseDocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "AssblValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "AgrLnNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ActBaseNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ActBaseLn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ActBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."CRD1" ALTER COLUMN "VatResCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."CRD1" ALTER COLUMN "UserSign" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."CRD1" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."CRD1" ALTER COLUMN "LineNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."CRD1" ALTER COLUMN "GSTType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    ALTER TABLE sapdata."CRD1" ALTER COLUMN "CreateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317131022_initial3') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220317131022_initial3', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317141340_initial4') THEN
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "UomEntry" SET NOT NULL;
    ALTER TABLE sapdata."OUOM" ALTER COLUMN "UomEntry" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317141340_initial4') THEN
    ALTER TABLE sapdata."OUOM" ADD CONSTRAINT "PK_OUOM" PRIMARY KEY ("UomEntry");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317141340_initial4') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220317141340_initial4', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317145507_initial5') THEN
    ALTER TABLE sapdata."ITM1" ADD id text NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317145507_initial5') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220317145507_initial5', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317145723_initial6') THEN
    ALTER TABLE sapdata."ITM1" ALTER COLUMN id SET NOT NULL;
    ALTER TABLE sapdata."ITM1" ALTER COLUMN id SET DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317145723_initial6') THEN
    ALTER TABLE sapdata."ITM1" ADD CONSTRAINT "PK_ITM1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317145723_initial6') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220317145723_initial6', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317150418_initial7') THEN
    ALTER TABLE sapdata."ITM9" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317150418_initial7') THEN
    ALTER TABLE sapdata."ITM9" ADD CONSTRAINT "PK_ITM9" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317150418_initial7') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220317150418_initial7', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."UGP1" DROP CONSTRAINT "PK_UGP1";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "LineNum" SET NOT NULL;
    ALTER TABLE "WTR1" ALTER COLUMN "LineNum" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "DocEntry" SET NOT NULL;
    ALTER TABLE "WTR1" ALTER COLUMN "DocEntry" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE "WTR1" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."UGP1" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DocEntry" SET NOT NULL;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "DocEntry" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."RPD1" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DocEntry" SET NOT NULL;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "DocEntry" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."RIN1" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DocEntry" SET NOT NULL;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "DocEntry" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."POR1" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DocEntry" SET NOT NULL;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "DocEntry" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."PDN1" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "WhsCode" SET NOT NULL;
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "WhsCode" SET DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "ListNum" TYPE integer;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."OITW" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE "OCRG" ALTER COLUMN "GroupCode" SET NOT NULL;
    ALTER TABLE "OCRG" ALTER COLUMN "GroupCode" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DocEntry" SET NOT NULL;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "DocEntry" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."INV1" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DocEntry" SET NOT NULL;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "DocEntry" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."IGN1" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DocEntry" SET NOT NULL;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "DocEntry" SET DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."IGE1" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."CRD1" ADD id text NOT NULL DEFAULT '';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE "WTR1" ADD CONSTRAINT "PK_WTR1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."UGP1" ADD CONSTRAINT "PK_UGP1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."RPD1" ADD CONSTRAINT "PK_RPD1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."RIN1" ADD CONSTRAINT "PK_RIN1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."POR1" ADD CONSTRAINT "PK_POR1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."PDN1" ADD CONSTRAINT "PK_PDN1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."OWHS" ADD CONSTRAINT "PK_OWHS" PRIMARY KEY ("WhsCode");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."OUGP" ADD CONSTRAINT "PK_OUGP" PRIMARY KEY ("UgpEntry");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."OPLN" ADD CONSTRAINT "PK_OPLN" PRIMARY KEY ("ListNum");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."OITW" ADD CONSTRAINT "PK_OITW" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE "OCRG" ADD CONSTRAINT "PK_OCRG" PRIMARY KEY ("GroupCode");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."INV1" ADD CONSTRAINT "PK_INV1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."IGN1" ADD CONSTRAINT "PK_IGN1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."IGE1" ADD CONSTRAINT "PK_IGE1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    ALTER TABLE sapdata."CRD1" ADD CONSTRAINT "PK_CRD1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220317152850_initial8') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220317152850_initial8', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220320060823_initial9') THEN
    ALTER TABLE sapdata."LOG" ADD "ExceTime" timestamp without time zone NOT NULL DEFAULT TIMESTAMP '-infinity';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220320060823_initial9') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220320060823_initial9', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220320071204_Initial10') THEN
    ALTER TABLE sapdata."OUGP" ALTER COLUMN "UserSign2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220320071204_Initial10') THEN
    ALTER TABLE sapdata."OUGP" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220320071204_Initial10') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220320071204_Initial10', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" RENAME COLUMN "OriginType" TO "Origintype";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" RENAME COLUMN "InterimTyp" TO "interimTyp";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" RENAME COLUMN "OriginType" TO "Origintype";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" RENAME COLUMN "InterimTyp" TO "interimTyp";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" RENAME COLUMN "OriginType" TO "Origintype";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" RENAME COLUMN "InterimTyp" TO "interimTyp";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" RENAME COLUMN "OriginType" TO "Origintype";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" RENAME COLUMN "InterimTyp" TO "interimTyp";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" RENAME COLUMN "OriginType" TO "Origintype";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" RENAME COLUMN "InterimTyp" TO "interimTyp";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" RENAME COLUMN "OriginType" TO "Origintype";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" RENAME COLUMN "InterimTyp" TO "interimTyp";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" RENAME COLUMN "OriginType" TO "Origintype";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" RENAME COLUMN "InterimTyp" TO "interimTyp";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "draftKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "ZrdAbs" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "VatJENum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "UpdateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "TransId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "TpCusPres" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "SumAbsId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "StationID" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "StDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "Series" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "Serial" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "SOIWizId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "ReqType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "Releaser" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "RelatedTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "RelatedEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "Receiver" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "ReceiptNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "PosCashReg" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "Payee" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "PayBlckRef" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "PQTGrpSer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "PQTGrpNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "POSRcptNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "POSCashN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "NfePrntFo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "NCorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "MInvNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "LndCstNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "LegTextF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "LangCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "LPgFolioN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "KeyVersion" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "ImportEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "Form1099" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "FolioNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "FolSeries" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "FolNumTo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "FolNumFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "EnvTypeNFe" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "EndDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "EDocExpFrm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "DunnLevel" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "DocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "DepositNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "DataVers" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "CreateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "CorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "CopyNumber" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "CntctCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "Checker" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "CUP" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "CIG" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "CCDEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "BPLId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "BPChCntc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "AtcEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "AnnInvDecR" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "AltBaseTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "AltBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORPD" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "draftKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "ZrdAbs" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "VatJENum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "UpdateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "TransId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "TpCusPres" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "SumAbsId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "StationID" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "StDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "Series" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "Serial" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "SOIWizId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "ReqType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "Releaser" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "RelatedTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "RelatedEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "Receiver" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "ReceiptNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "PosCashReg" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "Payee" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "PayBlckRef" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "PQTGrpSer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "PQTGrpNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "POSRcptNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "POSCashN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "NfePrntFo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "NCorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "MInvNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "LndCstNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "LegTextF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "LangCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "LPgFolioN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "KeyVersion" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "ImportEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "Form1099" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "FolioNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "FolSeries" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "FolNumTo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "FolNumFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "EnvTypeNFe" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "EndDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "EDocExpFrm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "DunnLevel" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "DocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "DepositNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "DataVers" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "CreateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "CorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "CopyNumber" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "CntctCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "Checker" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "CUP" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "CIG" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "CCDEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "BPLId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "BPChCntc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "AtcEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "AnnInvDecR" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "AltBaseTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "AltBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."ORIN" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "draftKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "ZrdAbs" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "VatJENum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "UpdateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "TransId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "TpCusPres" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "SumAbsId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "StationID" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "StDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "Series" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "Serial" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "SOIWizId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "ReqType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "Releaser" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "RelatedTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "RelatedEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "Receiver" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "ReceiptNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "PosCashReg" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "Payee" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "PayBlckRef" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "PQTGrpSer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "PQTGrpNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "POSRcptNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "POSCashN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "NfePrntFo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "NCorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "MInvNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "LndCstNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "LegTextF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "LangCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "LPgFolioN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "KeyVersion" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "ImportEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "Form1099" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "FolioNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "FolSeries" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "FolNumTo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "FolNumFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "EnvTypeNFe" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "EndDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "EDocExpFrm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "DunnLevel" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "DocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "DepositNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "DataVers" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "CreateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "CorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "CopyNumber" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "CntctCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "Checker" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "CUP" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "CIG" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "CCDEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "BPLId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "BPChCntc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "AtcEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "AnnInvDecR" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "AltBaseTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "AltBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPOR" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "draftKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "ZrdAbs" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "VatJENum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "UpdateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "TransId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "TpCusPres" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "SumAbsId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "StationID" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "StDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "Series" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "Serial" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "SOIWizId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "ReqType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "Releaser" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "RelatedTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "RelatedEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "Receiver" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "ReceiptNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "PosCashReg" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "Payee" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "PayBlckRef" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "PQTGrpSer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "PQTGrpNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "POSRcptNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "POSCashN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "NfePrntFo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "NCorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "MInvNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "LndCstNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "LegTextF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "LangCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "LPgFolioN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "KeyVersion" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "ImportEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "Form1099" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "FolioNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "FolSeries" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "FolNumTo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "FolNumFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "EnvTypeNFe" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "EndDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "EDocExpFrm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "DunnLevel" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "DocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "DepositNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "DataVers" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "CreateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "CorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "CopyNumber" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "CntctCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "Checker" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "CUP" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "CIG" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "CCDEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "BPLId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "BPChCntc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "AtcEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "AnnInvDecR" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "AltBaseTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "AltBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OPDN" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "draftKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "ZrdAbs" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "VatJENum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "UpdateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "TransId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "TpCusPres" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "SumAbsId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "StationID" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "StDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "Series" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "Serial" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "SOIWizId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "ReqType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "Releaser" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "RelatedTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "RelatedEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "Receiver" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "ReceiptNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "PosCashReg" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "Payee" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "PayBlckRef" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "PQTGrpSer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "PQTGrpNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "POSRcptNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "POSCashN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "NfePrntFo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "NCorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "MInvNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "LndCstNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "LegTextF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "LangCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "LPgFolioN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "KeyVersion" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "ImportEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "Form1099" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "FolioNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "FolSeries" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "FolNumTo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "FolNumFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "EnvTypeNFe" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "EndDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "EDocExpFrm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "DunnLevel" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "DocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "DepositNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "DataVers" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "CreateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "CorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "CopyNumber" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "CntctCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "Checker" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "CUP" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "CIG" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "CCDEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "BPLId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "BPChCntc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "AtcEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "AnnInvDecR" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "AltBaseTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "AltBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OINV" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "draftKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "ZrdAbs" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "VatJENum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "UpdateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "TransId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "TpCusPres" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "SumAbsId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "StationID" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "StDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "Series" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "Serial" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "SOIWizId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "ReqType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "Releaser" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "RelatedTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "RelatedEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "Receiver" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "ReceiptNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "PosCashReg" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "Payee" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "PayBlckRef" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "PQTGrpSer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "PQTGrpNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "POSRcptNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "POSCashN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "NfePrntFo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "NCorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "MInvNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "LndCstNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "LegTextF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "LangCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "LPgFolioN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "KeyVersion" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "ImportEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "Form1099" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "FolioNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "FolSeries" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "FolNumTo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "FolNumFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "EnvTypeNFe" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "EndDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "EDocExpFrm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "DunnLevel" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "DocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "DepositNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "DataVers" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "CreateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "CorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "CopyNumber" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "CntctCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "Checker" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "CUP" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "CIG" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "CCDEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "BPLId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "BPChCntc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "AtcEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "AnnInvDecR" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "AltBaseTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "AltBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGN" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "draftKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "ZrdAbs" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "VatJENum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "UpdateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "TransId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "TpCusPres" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "SumAbsId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "StationID" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "StDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "SlpCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "Series" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "Serial" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "SOIWizId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "ReqType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "Releaser" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "RelatedTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "RelatedEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "Receiver" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "ReceiptNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "PosCashReg" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "Payee" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "PayBlckRef" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "PQTGrpSer" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "PQTGrpNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "POSRcptNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "POSCashN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "OwnerCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "NfePrntFo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "NCorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "MInvNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "LndCstNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "LegTextF" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "LangCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "LPgFolioN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "KeyVersion" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "ImportEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "Form1099" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "FolioNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "FolSeries" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "FolNumTo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "FolNumFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "Flags" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "FinncPriod" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "EnvTypeNFe" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "EndDlvTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "EDocExpFrm" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "DunnLevel" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "DocNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "DepositNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "DataVers" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "CreateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "CorrInv" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "CopyNumber" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "CntctCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "Checker" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "CUP" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "CIG" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "CCDEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "BaseType" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "BaseEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "BPLId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "BPChCntc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "AtcEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "AnnInvDecR" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "AltBaseTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "AltBaseEnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    ALTER TABLE sapdata."OIGE" ALTER COLUMN "AgrNo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321071835_initial11') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220321071835_initial11', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Wght2Unit" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Wght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Wght1Unit" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Wght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Wdth2Unit" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Wdth2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Wdth1Unit" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Wdth1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VolUnit" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VolUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatExLN" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "VatExLN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TrnsCode" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "TrnsCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ReturnRsn" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ReturnRsn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ReturnAct" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "ReturnAct" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Len2Unit" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Len2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Len1Unit" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Len1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Hght2Unit" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Hght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Hght1Unit" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "Hght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GrossBase" TYPE integer;
    ALTER TABLE sapdata."RPD1" ALTER COLUMN "GrossBase" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Wght2Unit" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Wght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Wght1Unit" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Wght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Wdth2Unit" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Wdth2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Wdth1Unit" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Wdth1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VolUnit" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VolUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatExLN" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "VatExLN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TrnsCode" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "TrnsCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ReturnRsn" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ReturnRsn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ReturnAct" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "ReturnAct" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Len2Unit" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Len2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Len1Unit" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Len1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Hght2Unit" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Hght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Hght1Unit" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "Hght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GrossBase" TYPE integer;
    ALTER TABLE sapdata."RIN1" ALTER COLUMN "GrossBase" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Wght2Unit" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Wght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Wght1Unit" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Wght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Wdth2Unit" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Wdth2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Wdth1Unit" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Wdth1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VolUnit" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VolUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatExLN" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "VatExLN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TrnsCode" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "TrnsCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ReturnRsn" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ReturnRsn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ReturnAct" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "ReturnAct" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Len2Unit" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Len2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Len1Unit" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Len1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Hght2Unit" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Hght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Hght1Unit" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "Hght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GrossBase" TYPE integer;
    ALTER TABLE sapdata."POR1" ALTER COLUMN "GrossBase" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Wght2Unit" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Wght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Wght1Unit" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Wght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Wdth2Unit" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Wdth2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Wdth1Unit" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Wdth1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VolUnit" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VolUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatExLN" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "VatExLN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TrnsCode" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "TrnsCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ReturnRsn" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ReturnRsn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ReturnAct" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "ReturnAct" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Len2Unit" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Len2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Len1Unit" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Len1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Hght2Unit" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Hght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Hght1Unit" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "Hght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GrossBase" TYPE integer;
    ALTER TABLE sapdata."PDN1" ALTER COLUMN "GrossBase" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Wght2Unit" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Wght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Wght1Unit" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Wght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Wdth2Unit" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Wdth2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Wdth1Unit" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Wdth1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VolUnit" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VolUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatExLN" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "VatExLN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TrnsCode" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "TrnsCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ReturnRsn" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ReturnRsn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ReturnAct" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "ReturnAct" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Len2Unit" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Len2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Len1Unit" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Len1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Hght2Unit" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Hght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Hght1Unit" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "Hght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GrossBase" TYPE integer;
    ALTER TABLE sapdata."INV1" ALTER COLUMN "GrossBase" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Wght2Unit" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Wght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Wght1Unit" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Wght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Wdth2Unit" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Wdth2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Wdth1Unit" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Wdth1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VolUnit" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VolUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatExLN" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "VatExLN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TrnsCode" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "TrnsCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ReturnRsn" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ReturnRsn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ReturnAct" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "ReturnAct" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Len2Unit" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Len2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Len1Unit" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Len1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Hght2Unit" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Hght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Hght1Unit" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "Hght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GrossBase" TYPE integer;
    ALTER TABLE sapdata."IGN1" ALTER COLUMN "GrossBase" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Wght2Unit" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Wght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Wght1Unit" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Wght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Wdth2Unit" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Wdth2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Wdth1Unit" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Wdth1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VolUnit" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VolUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatExLN" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "VatExLN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TrnsCode" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "TrnsCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ReturnRsn" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ReturnRsn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ReturnAct" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "ReturnAct" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Len2Unit" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Len2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Len1Unit" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Len1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Hght2Unit" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Hght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Hght1Unit" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "Hght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GrossBase" TYPE integer;
    ALTER TABLE sapdata."IGE1" ALTER COLUMN "GrossBase" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220321075117_initial12') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220321075117_initial12', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" RENAME COLUMN "StkInTnAct" TO "StkintnAct";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "userSign2" TYPE integer;
    ALTER TABLE sapdata."OITW" ALTER COLUMN "userSign2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "updateDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "logInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "createDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "UserSign" TYPE integer;
    ALTER TABLE sapdata."OITW" ALTER COLUMN "UserSign" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "U_MinDayItem" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "U_MinDayCategory" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "U_MaxDayItem" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "U_MaxDayCategory" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "U_FixMin" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "U_FixMax" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "StockValue" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "OnOrder" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "OnHand" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "MinStock" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "MinOrder" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "MaxStock" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "IsCommited" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "FreezeDoc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "DftBinAbs" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "Counted" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "Consig" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    ALTER TABLE sapdata."OITW" ALTER COLUMN "AvgPrice" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322094039_Initial13') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220322094039_Initial13', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE "OCRG" SET SCHEMA sapdata;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" RENAME COLUMN "StkInTnAct" TO "StkintnAct";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" RENAME COLUMN "IntrnalKey" TO "intrnalKey";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "userSign2" TYPE integer;
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "userSign2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "updateDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "logInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "createDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "UserSign" TYPE integer;
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "UserSign" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "StorKeeper" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "RecItemsBy" TYPE integer;
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "RecItemsBy" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "Location" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "intrnalKey" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "DftBinAbs" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "BPLid" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "AutoRecvMd" TYPE integer;
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "AutoRecvMd" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "AutoIssMtd" TYPE integer;
    ALTER TABLE sapdata."OWHS" ALTER COLUMN "AutoIssMtd" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220322141750_Initial14') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220322141750_Initial14', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323133610_initial20') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220323133610_initial20', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "WeightUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "VolUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "UserSign2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "UserSign" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "TrnspCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "SeqCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "Segment" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "NTSWebSite" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "IssReason" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "InterimTyp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "Instance" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "Installmnt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "GroupNum" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "GrossBase" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "ExtraMonth" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "ExtraDays" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "ESeries" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "DocTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "Department" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "ClosingOpt" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "CdcOffset" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    ALTER TABLE sapdata."OWTR" ALTER COLUMN "Branch" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323135910_initial21') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220323135910_initial21', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" RENAME COLUMN "Shortages" TO shortages;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "Wght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "Wght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "Wdth2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "Wdth1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "VolUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "VatExLN" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "TrnsCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "ReturnRsn" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "ReturnAct" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "Len2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "Len1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "Hght2Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "Hght1Unit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    ALTER TABLE "WTR1" ALTER COLUMN "GrossBase" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323140247_initial22') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220323140247_initial22', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323141605_initial23') THEN
    ALTER TABLE "WTR1" DROP CONSTRAINT "PK_WTR1";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323141605_initial23') THEN
    ALTER TABLE "WTR1" RENAME TO "WTR1S";
    ALTER TABLE "WTR1S" SET SCHEMA sapdata;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323141605_initial23') THEN
    ALTER TABLE sapdata."WTR1S" ADD CONSTRAINT "PK_WTR1S" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323141605_initial23') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220323141605_initial23', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323141941_initial24') THEN
    ALTER TABLE sapdata."WTR1S" DROP CONSTRAINT "PK_WTR1S";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323141941_initial24') THEN
    ALTER TABLE sapdata."WTR1S" RENAME TO "WTR1";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323141941_initial24') THEN
    ALTER TABLE sapdata."WTR1" ADD CONSTRAINT "PK_WTR1" PRIMARY KEY (id);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220323141941_initial24') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220323141941_initial24', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220324080223_initial25') THEN
    CREATE TABLE sapdata."OITB" (
        "ItmsGrpCod" integer NOT NULL,
        "ItmsGrpNam" text NULL,
        "Locked" text NULL,
        "DataSource" text NULL,
        "UserSign" integer NULL,
        "BalInvntAc" text NULL,
        "SaleCostAc" text NULL,
        "TransferAc" text NULL,
        "RevenuesAc" text NULL,
        "VarianceAc" text NULL,
        "DecreasAc" text NULL,
        "IncreasAc" text NULL,
        "ReturnAc" text NULL,
        "ExpensesAc" text NULL,
        "EURevenuAc" text NULL,
        "EUExpensAc" text NULL,
        "FrRevenuAc" text NULL,
        "FrExpensAc" text NULL,
        "ExmptIncom" text NULL,
        "CycleCode" integer NULL,
        "Alert" text NULL,
        "PriceDifAc" text NULL,
        "ExchangeAc" text NULL,
        "BalanceAcc" text NULL,
        "PurchaseAc" text NULL,
        "PAReturnAc" text NULL,
        "PurchOfsAc" text NULL,
        "ShpdGdsAct" text NULL,
        "VatRevAct" text NULL,
        "DecresGlAc" text NULL,
        "IncresGlAc" text NULL,
        "InvntSys" text NULL,
        "PlaningSys" text NULL,
        "PrcrmntMtd" text NULL,
        "Ordrintrvl" integer NULL,
        "OrdrMulti" numeric NULL,
        "MinOrdrQty" numeric NULL,
        "LeadTime" integer NULL,
        "StokRvlAct" text NULL,
        "StkOffsAct" text NULL,
        "WipAcct" text NULL,
        "WipVarAcct" text NULL,
        "CostRvlAct" text NULL,
        "CstOffsAct" text NULL,
        "ExpClrAct" text NULL,
        "ExpOfstAct" text NULL,
        "Object" text NULL,
        "logInstanc" integer NULL,
        "createDate" timestamp without time zone NULL,
        "userSign2" integer NULL,
        "updateDate" timestamp without time zone NULL,
        "ARCMAct" text NULL,
        "ARCMFrnAct" text NULL,
        "ARCMEUAct" text NULL,
        "ARCMExpAct" text NULL,
        "APCMAct" text NULL,
        "APCMFrnAct" text NULL,
        "APCMEUAct" text NULL,
        "RevRetAct" text NULL,
        "ItemClass" text NULL,
        "OSvcCode" integer NULL,
        "ISvcCode" integer NULL,
        "ServiceGrp" integer NULL,
        "NCMCode" integer NULL,
        "MatType" text NULL,
        "MatGrp" integer NULL,
        "ProductSrc" text NULL,
        "NegStckAct" text NULL,
        "StkintnAct" text NULL,
        "PurBalAct" text NULL,
        "WhICenAct" text NULL,
        "WhOCenAct" text NULL,
        "WipOffset" text NULL,
        "StockOffst" text NULL,
        "UgpEntry" integer NULL,
        "IUoMEntry" integer NULL,
        "ToleranDay" integer NULL,
        "RuleCode" text NULL,
        "CompoWH" text NULL,
        "FreeChrgSA" text NULL,
        "FreeChrgPU" text NULL,
        "RawMtrl" text NULL,
        "U_CXS_MDFD" text NULL,
        CONSTRAINT "PK_OITB" PRIMARY KEY ("ItmsGrpCod")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220324080223_initial25') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220324080223_initial25', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" RENAME COLUMN "OrdrIntrvl" TO "Ordrintrvl";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "UpdateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "UgpEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "ToleranDay" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "Technician" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "StdItemId" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "ServiceGrp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "ServiceCtg" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "Series" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "SUoMEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "SACEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "QueryGroup" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "PriceUnit" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "PUoMEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "OSvcCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "NCMCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "MnufctTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "MatGrp" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "Location" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "LeadTime" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "IUoMEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "ISvcCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "INUoMEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "FuelCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "ExcImpQUoM" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "Employee" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "DocEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "DataVers" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "DNFEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "CreateTS" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "CommClass" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "ChapterID" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "CESTCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "BeverTM" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    ALTER TABLE sapdata."OITM" ALTER COLUMN "AtcEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220328044826_initial26') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220328044826_initial26', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220330134041_Initial27') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220330134041_Initial27', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220330134226_Initial28') THEN
    ALTER TABLE sapdata."OITM" RENAME COLUMN "Ordrintrvl" TO "OrdrIntrvl";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220330134226_Initial28') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220330134226_Initial28', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220402051036_Initial29') THEN
    ALTER TABLE sapdata."OITW" ADD "PostingDate" timestamp without time zone NOT NULL DEFAULT TIMESTAMP '-infinity';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220402051036_Initial29') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220402051036_Initial29', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" RENAME COLUMN "RndFrmtInt" TO "RndFrmtint";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "ValidTo" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "ValidFrom" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "UserSign2" TYPE integer;
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "UserSign2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "UserSign" TYPE integer;
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "UserSign" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "UpdateDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "SPPCounter" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "RoundSys" TYPE integer;
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "RoundSys" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "GroupCode" TYPE integer;
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "GroupCode" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "Factor" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "ExtAmount" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "CreateDate" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "BASE_NUM" TYPE integer;
    ALTER TABLE sapdata."OPLN" ALTER COLUMN "BASE_NUM" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220404045845_Initial30') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220404045845_Initial30', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220420073725_initial40') THEN
    ALTER TABLE sapdata."OUGP" ALTER COLUMN "UserSign" TYPE integer;
    ALTER TABLE sapdata."OUGP" ALTER COLUMN "UserSign" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220420073725_initial40') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220420073725_initial40', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220422043206_Initial2204001') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220422043206_Initial2204001', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220422043955_Initial2204003') THEN
    CREATE TABLE sapdata."AITM" (
        "Id" text NOT NULL,
        "ItemCode" text NOT NULL,
        "ItemName" text NULL,
        "FrgnName" text NULL,
        "ItmsGrpCod" integer NULL,
        "CstGrpCode" integer NULL,
        "VatGourpSa" text NULL,
        "CodeBars" text NULL,
        "VATLiable" text NULL,
        "PrchseItem" text NULL,
        "SellItem" text NULL,
        "InvntItem" text NULL,
        "OnHand" numeric NULL,
        "IsCommited" numeric NULL,
        "OnOrder" numeric NULL,
        "IncomeAcct" text NULL,
        "ExmptIncom" text NULL,
        "MaxLevel" numeric NULL,
        "DfltWH" text NULL,
        "CardCode" text NULL,
        "SuppCatNum" text NULL,
        "BuyUnitMsr" text NULL,
        "NumInBuy" numeric NULL,
        "ReorderQty" numeric NULL,
        "MinLevel" numeric NULL,
        "LstEvlPric" numeric NULL,
        "LstEvlDate" timestamp without time zone NULL,
        "CustomPer" numeric NULL,
        "Canceled" text NULL,
        "MnufctTime" integer NULL,
        "WholSlsTax" text NULL,
        "RetilrTax" text NULL,
        "SpcialDisc" numeric NULL,
        "DscountCod" integer NULL,
        "TrackSales" text NULL,
        "SalUnitMsr" text NULL,
        "NumInSale" numeric NULL,
        "Consig" numeric NULL,
        "QueryGroup" integer NULL,
        "Counted" numeric NULL,
        "OpenBlnc" numeric NULL,
        "EvalSystem" text NULL,
        "UserSign" integer NULL,
        "FREE" text NULL,
        "PicturName" text NULL,
        "Transfered" text NULL,
        "BlncTrnsfr" text NULL,
        "UserText" text NULL,
        "SerialNum" text NULL,
        "CommisPcnt" numeric NULL,
        "CommisSum" numeric NULL,
        "CommisGrp" integer NULL,
        "TreeType" text NULL,
        "TreeQty" numeric NULL,
        "LastPurPrc" numeric NULL,
        "LastPurCur" text NULL,
        "LastPurDat" timestamp without time zone NULL,
        "ExitCur" text NULL,
        "ExitPrice" numeric NULL,
        "ExitWH" text NULL,
        "AssetItem" text NULL,
        "WasCounted" text NULL,
        "ManSerNum" text NULL,
        "SHeight1" numeric NULL,
        "SHght1Unit" integer NULL,
        "SHeight2" numeric NULL,
        "SHght2Unit" integer NULL,
        "SWidth1" numeric NULL,
        "SWdth1Unit" integer NULL,
        "SWidth2" numeric NULL,
        "SWdth2Unit" integer NULL,
        "SLength1" numeric NULL,
        "SLen1Unit" integer NULL,
        "Slength2" numeric NULL,
        "SLen2Unit" integer NULL,
        "SVolume" numeric NULL,
        "SVolUnit" integer NULL,
        "SWeight1" numeric NULL,
        "SWght1Unit" integer NULL,
        "SWeight2" numeric NULL,
        "SWght2Unit" integer NULL,
        "BHeight1" numeric NULL,
        "BHght1Unit" integer NULL,
        "BHeight2" numeric NULL,
        "BHght2Unit" integer NULL,
        "BWidth1" numeric NULL,
        "BWdth1Unit" integer NULL,
        "BWidth2" numeric NULL,
        "BWdth2Unit" integer NULL,
        "BLength1" numeric NULL,
        "BLen1Unit" integer NULL,
        "Blength2" numeric NULL,
        "BLen2Unit" integer NULL,
        "BVolume" numeric NULL,
        "BVolUnit" integer NULL,
        "BWeight1" numeric NULL,
        "BWght1Unit" integer NULL,
        "BWeight2" numeric NULL,
        "BWght2Unit" integer NULL,
        "FixCurrCms" text NULL,
        "FirmCode" integer NULL,
        "LstSalDate" timestamp without time zone NULL,
        "QryGroup1" text NULL,
        "QryGroup2" text NULL,
        "QryGroup3" text NULL,
        "QryGroup4" text NULL,
        "QryGroup5" text NULL,
        "QryGroup6" text NULL,
        "QryGroup7" text NULL,
        "QryGroup8" text NULL,
        "QryGroup9" text NULL,
        "QryGroup10" text NULL,
        "QryGroup11" text NULL,
        "QryGroup12" text NULL,
        "QryGroup13" text NULL,
        "QryGroup14" text NULL,
        "QryGroup15" text NULL,
        "QryGroup16" text NULL,
        "QryGroup17" text NULL,
        "QryGroup18" text NULL,
        "QryGroup19" text NULL,
        "QryGroup20" text NULL,
        "QryGroup21" text NULL,
        "QryGroup22" text NULL,
        "QryGroup23" text NULL,
        "QryGroup24" text NULL,
        "QryGroup25" text NULL,
        "QryGroup26" text NULL,
        "QryGroup27" text NULL,
        "QryGroup28" text NULL,
        "QryGroup29" text NULL,
        "QryGroup30" text NULL,
        "QryGroup31" text NULL,
        "QryGroup32" text NULL,
        "QryGroup33" text NULL,
        "QryGroup34" text NULL,
        "QryGroup35" text NULL,
        "QryGroup36" text NULL,
        "QryGroup37" text NULL,
        "QryGroup38" text NULL,
        "QryGroup39" text NULL,
        "QryGroup40" text NULL,
        "QryGroup41" text NULL,
        "QryGroup42" text NULL,
        "QryGroup43" text NULL,
        "QryGroup44" text NULL,
        "QryGroup45" text NULL,
        "QryGroup46" text NULL,
        "QryGroup47" text NULL,
        "QryGroup48" text NULL,
        "QryGroup49" text NULL,
        "QryGroup50" text NULL,
        "QryGroup51" text NULL,
        "QryGroup52" text NULL,
        "QryGroup53" text NULL,
        "QryGroup54" text NULL,
        "QryGroup55" text NULL,
        "QryGroup56" text NULL,
        "QryGroup57" text NULL,
        "QryGroup58" text NULL,
        "QryGroup59" text NULL,
        "QryGroup60" text NULL,
        "QryGroup61" text NULL,
        "QryGroup62" text NULL,
        "QryGroup63" text NULL,
        "QryGroup64" text NULL,
        "CreateDate" timestamp without time zone NULL,
        "UpdateDate" timestamp without time zone NULL,
        "ExportCode" text NULL,
        "SalFactor1" numeric NULL,
        "SalFactor2" numeric NULL,
        "SalFactor3" numeric NULL,
        "SalFactor4" numeric NULL,
        "PurFactor1" numeric NULL,
        "PurFactor2" numeric NULL,
        "PurFactor3" numeric NULL,
        "PurFactor4" numeric NULL,
        "SalFormula" text NULL,
        "PurFormula" text NULL,
        "VatGroupPu" text NULL,
        "AvgPrice" numeric NULL,
        "PurPackMsr" text NULL,
        "PurPackUn" numeric NULL,
        "SalPackMsr" text NULL,
        "SalPackUn" numeric NULL,
        "SCNCounter" integer NULL,
        "ManBtchNum" text NULL,
        "ManOutOnly" text NULL,
        "DataSource" text NULL,
        "validFor" text NULL,
        "validFrom" timestamp without time zone NULL,
        "validTo" timestamp without time zone NULL,
        "frozenFor" text NULL,
        "frozenFrom" timestamp without time zone NULL,
        "frozenTo" timestamp without time zone NULL,
        "BlockOut" text NULL,
        "ValidComm" text NULL,
        "FrozenComm" text NULL,
        "LogInstanc" integer NOT NULL,
        "ObjType" text NULL,
        "SWW" text NULL,
        "Deleted" text NULL,
        "DocEntry" integer NULL,
        "ExpensAcct" text NULL,
        "FrgnInAcct" text NULL,
        "ShipType" integer NULL,
        "GLMethod" text NULL,
        "ECInAcct" text NULL,
        "FrgnExpAcc" text NULL,
        "ECExpAcc" text NULL,
        "TaxType" text NULL,
        "ByWh" text NULL,
        "WTLiable" text NULL,
        "ItemType" text NULL,
        "WarrntTmpl" text NULL,
        "BaseUnit" text NULL,
        "CountryOrg" text NULL,
        "StockValue" numeric NULL,
        "Phantom" text NULL,
        "IssueMthd" text NULL,
        "FREE1" text NULL,
        "PricingPrc" numeric NULL,
        "MngMethod" text NULL,
        "ReorderPnt" numeric NULL,
        "InvntryUom" text NULL,
        "PlaningSys" text NULL,
        "PrcrmntMtd" text NULL,
        "OrdrIntrvl" integer NULL,
        "OrdrMulti" numeric NULL,
        "MinOrdrQty" numeric NULL,
        "LeadTime" integer NULL,
        "IndirctTax" text NULL,
        "TaxCodeAR" text NULL,
        "TaxCodeAP" text NULL,
        "OSvcCode" integer NULL,
        "ISvcCode" integer NULL,
        "ServiceGrp" integer NULL,
        "NCMCode" integer NULL,
        "MatType" text NULL,
        "MatGrp" integer NULL,
        "ProductSrc" text NULL,
        "ServiceCtg" integer NULL,
        "ItemClass" text NULL,
        "Excisable" text NULL,
        "ChapterID" integer NULL,
        "NotifyASN" text NULL,
        "ProAssNum" text NULL,
        "AssblValue" numeric NULL,
        "DNFEntry" integer NULL,
        "UserSign2" integer NULL,
        "Spec" text NULL,
        "TaxCtg" text NULL,
        "Series" integer NULL,
        "Number" numeric NULL,
        "FuelCode" integer NULL,
        "BeverTblC" text NULL,
        "BeverGrpC" text NULL,
        "BeverTM" integer NULL,
        "Attachment" text NULL,
        "AtcEntry" integer NULL,
        "ToleranDay" integer NULL,
        "UgpEntry" integer NULL,
        "PUoMEntry" integer NULL,
        "SUoMEntry" integer NULL,
        "IUoMEntry" integer NULL,
        "IssuePriBy" integer NULL,
        "AssetClass" text NULL,
        "AssetGroup" text NULL,
        "InventryNo" text NULL,
        "Technician" integer NULL,
        "Employee" integer NULL,
        "Location" integer NULL,
        "StatAsset" text NULL,
        "Cession" text NULL,
        "DeacAftUL" text NULL,
        "AsstStatus" text NULL,
        "CapDate" timestamp without time zone NULL,
        "AcqDate" timestamp without time zone NULL,
        "RetDate" timestamp without time zone NULL,
        "GLPickMeth" text NULL,
        "NoDiscount" text NULL,
        "MgrByQty" text NULL,
        "AssetRmk1" text NULL,
        "AssetRmk2" text NULL,
        "AssetAmnt1" numeric NULL,
        "AssetAmnt2" numeric NULL,
        "DeprGroup" text NULL,
        "AssetSerNo" text NULL,
        "CntUnitMsr" text NULL,
        "NumInCnt" numeric NULL,
        "INUoMEntry" integer NULL,
        "OneBOneRec" text NULL,
        "RuleCode" text NULL,
        "ScsCode" text NULL,
        "SpProdType" text NULL,
        "IWeight1" numeric NULL,
        "IWght1Unit" integer NULL,
        "IWeight2" numeric NULL,
        "IWght2Unit" integer NULL,
        "CompoWH" text NULL,
        "CreateTS" integer NULL,
        "UpdateTS" integer NULL,
        "VirtAstItm" text NULL,
        "SouVirAsst" text NULL,
        "InCostRoll" text NULL,
        "PrdStdCst" numeric NULL,
        "EnAstSeri" text NULL,
        "LinkRsc" text NULL,
        "OnHldPert" numeric NULL,
        "onHldLimt" numeric NULL,
        "PriceUnit" integer NULL,
        "GSTRelevnt" text NULL,
        "SACEntry" integer NULL,
        "GstTaxCtg" text NULL,
        "AssVal4WTR" numeric NULL,
        "ExcImpQUoM" integer NULL,
        "ExcFixAmnt" numeric NULL,
        "ExcRate" numeric NULL,
        "SOIExc" text NULL,
        "TNVED" text NULL,
        "Imported" text NULL,
        "AutoBatch" text NULL,
        "CstmActing" text NULL,
        "StdItemId" integer NULL,
        "CommClass" integer NULL,
        "TaxCatCode" text NULL,
        "DataVers" integer NULL,
        "NVECode" text NULL,
        "CESTCode" integer NULL,
        "CtrSealQty" numeric NULL,
        "LegalText" text NULL,
        "U_CXS_REIT" text NULL,
        "U_CXS_ACID" text NULL,
        "U_CXS_TIPR" text NULL,
        "U_CXS_ZVIT" text NULL,
        "U_CXS_ISDT" text NULL,
        "U_CXS_ISGC" text NULL,
        "U_CXS_NSPO" text NULL,
        "U_CXS_ISTO" text NULL,
        "U_CXS_SLDC" text NULL,
        "U_Remark1" text NULL,
        "U_Remark2" text NULL,
        "U_Remark3" text NULL,
        "U_Remark4" text NULL,
        "U_Remark5" text NULL,
        "U_Remark6" text NULL,
        "U_Remak7" text NULL,
        "U_Remark8" text NULL,
        "U_CXS_MDFD" text NULL,
        "U_Remark9" text NULL,
        "U_Remark10" text NULL,
        "U_SpecialItem" text NULL,
        "U_ReasonCodeDaily" text NULL,
        "U_StockUOM" text NULL,
        "U_ReasonCodeItem" text NULL,
        "U_UOM" text NULL,
        "U_UOMCo" numeric NULL,
        "U_CUOMN" text NULL,
        "U_CUOMC" numeric NULL,
        "U_RefItemCode" text NULL,
        "U_Expired" text NULL,
        "U_remark11" text NULL,
        "U_remark12" text NULL,
        "U_remark13" text NULL,
        "U_remark14" text NULL,
        "U_remark15" text NULL,
        "U_remark16" text NULL,
        "U_remark17" text NULL,
        "U_remark18" text NULL,
        "U_remark19" text NULL,
        "U_remark20" text NULL,
        "U_remark21" text NULL,
        "U_remark22" text NULL,
        "U_remark23" text NULL,
        "U_remark24" text NULL,
        "U_remark25" text NULL,
        "U_remark26" text NULL,
        "U_remark27" text NULL,
        "U_remark28" text NULL,
        "U_remark29" text NULL,
        "U_remark30" text NULL,
        "U_ramark31" text NULL,
        "U_remark32" text NULL,
        "U_remark33" text NULL,
        "U_remark34" text NULL,
        "U_remark35" text NULL,
        "U_remark36" text NULL,
        "U_remark37" text NULL,
        "U_remark38" text NULL,
        "U_remark39" text NULL,
        "U_remark40" text NULL,
        "U_remark41" text NULL,
        "U_remark42" text NULL,
        "U_remark44" text NULL,
        "U_remark43" text NULL,
        "U_remark45" text NULL,
        "U_Type" text NULL,
        "U_POTYPE" text NULL,
        "U_MeetingInactiveDate" text NULL,
        "U_2ndNewItemFees" text NULL,
        CONSTRAINT "PK_AITM" PRIMARY KEY ("Id")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220422043955_Initial2204003') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220422043955_Initial2204003', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829065045_OCRGColumnChanges') THEN
    ALTER TABLE sapdata."OCRG" RENAME COLUMN "U_CXS_MDFD" TO "U_BOY_90_IIB";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829065045_OCRGColumnChanges') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220829065045_OCRGColumnChanges', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829082151_OMRCADDED') THEN
    CREATE TABLE sapdata."OMRC" (
        "FirmCode" integer GENERATED BY DEFAULT AS IDENTITY,
        "FirmName" text NULL,
        "DataSource" text NULL,
        "UserSign" integer NOT NULL,
        CONSTRAINT "PK_OMRC" PRIMARY KEY ("FirmCode")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829082151_OMRCADDED') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220829082151_OMRCADDED', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829095137_OBCDAdded') THEN
    ALTER TABLE sapdata."OMRC" ALTER COLUMN "FirmCode" 
    DROP IDENTITY;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829095137_OBCDAdded') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220829095137_OBCDAdded', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829102502_OBCDUserSignChanged') THEN
    CREATE TABLE sapdata."OBCD" (
        "BcdEntry" integer NOT NULL,
        "BcdCode" text NULL,
        "BcdName" text NULL,
        "ItemCode" text NULL,
        "UomEntry" integer NOT NULL,
        "DataSource" text NULL,
        "UserSign" integer NULL,
        "LogInstanc" integer NOT NULL,
        "UserSign2" integer NOT NULL,
        "UpdateDate" timestamp without time zone NULL,
        "CreateDate" timestamp without time zone NULL,
        CONSTRAINT "PK_OBCD" PRIMARY KEY ("BcdEntry")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829102502_OBCDUserSignChanged') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220829102502_OBCDUserSignChanged', '6.0.3');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;


DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829104052_OBCDIntNullableAdded') THEN
    ALTER TABLE sapdata."OBCD" ALTER COLUMN "UserSign2" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829104052_OBCDIntNullableAdded') THEN
    ALTER TABLE sapdata."OBCD" ALTER COLUMN "UomEntry" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829104052_OBCDIntNullableAdded') THEN
    ALTER TABLE sapdata."OBCD" ALTER COLUMN "LogInstanc" DROP NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20220829104052_OBCDIntNullableAdded') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20220829104052_OBCDIntNullableAdded', '6.0.3');
    END IF;
END $EF$;
COMMIT;

