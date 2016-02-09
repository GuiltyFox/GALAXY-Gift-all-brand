.class public Lcom/samsung/privilege/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/DialogUtil$NotTransferListener;,
        Lcom/samsung/privilege/util/DialogUtil$TransferListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static gIsFinish:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-class v0, Lcom/samsung/privilege/util/DialogUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    .line 1155
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;
    .registers 6
    .param p0, "barcode_type"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "imgBarcode"    # Landroid/widget/ImageView;

    .prologue
    .line 2030
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2031
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2032
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AZTEC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2033
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2074
    :goto_21
    const-string v1, "ENCODE_TYPE"

    const-string v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2075
    const-string v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2076
    return-object v0

    .line 2034
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODABAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2035
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2036
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 2037
    :cond_4b
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODE_39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2038
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2039
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 2040
    :cond_68
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODE_93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 2041
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2042
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 2043
    :cond_85
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODE_128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 2044
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2045
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 2046
    :cond_a2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DATA_MATRIX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 2047
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2048
    :cond_bb
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EAN_8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 2049
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2050
    :cond_d4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EAN_13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 2051
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2052
    :cond_ed
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ITF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 2053
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2054
    :cond_106
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAXICODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 2055
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2056
    :cond_11f
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PDF_417"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 2057
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2058
    :cond_138
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 2059
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_21

    .line 2061
    :cond_156
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSS_14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 2062
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2063
    :cond_16f
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSS_EXPANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_188

    .line 2064
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2065
    :cond_188
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPC_A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 2066
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2067
    :cond_1a1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPC_E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 2068
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2069
    :cond_1ba
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPC_EAN_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 2070
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2072
    :cond_1d3
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21
.end method

.method private static genPrivilegeMessageOfFrontend(Ljava/lang/String;Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;)Ljava/lang/String;
    .registers 8
    .param p0, "privilege_message"    # Ljava/lang/String;
    .param p1, "activityContext"    # Landroid/app/Activity;
    .param p2, "purchasing"    # Lcom/samsung/privilege/bean/Purchasing;

    .prologue
    .line 902
    move-object v1, p0

    .line 904
    .local v1, "privilege_message_regen":Ljava/lang/String;
    if-eqz p2, :cond_5a

    .line 905
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->AgencyID:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_296

    .line 906
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 907
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Delivered:Z

    if-eqz v2, :cond_97

    .line 910
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsShipped:Z

    if-eqz v2, :cond_75

    .line 915
    const v2, 0x7f0a0160

    :try_start_24
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 916
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    if-eqz v2, :cond_5a

    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a0170

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_59} :catch_5b

    move-result-object v1

    .line 1152
    :cond_5a
    :goto_5a
    return-object v1

    .line 919
    :catch_5b
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 927
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_75
    const v2, 0x7f0a015e

    :try_start_78
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7d

    move-result-object v1

    goto :goto_5a

    .line 928
    :catch_7d
    move-exception v0

    .line 929
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 933
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_97
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsSpecificPrintVoucher:Z

    if-eqz v2, :cond_bd

    .line 940
    const v2, 0x7f0a0163

    :try_start_9e
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_a3

    move-result-object v1

    goto :goto_5a

    .line 941
    :catch_a3
    move-exception v0

    .line 942
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 949
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_bd
    iget v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ExpireIn:I

    if-ltz v2, :cond_5a

    .line 956
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    if-nez v2, :cond_5a

    .line 965
    const v2, 0x7f0a0165

    :try_start_c8
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cd

    move-result-object v1

    goto :goto_5a

    .line 966
    :catch_cd
    move-exception v0

    .line 967
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 978
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e8
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fc

    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_202

    .line 979
    :cond_fc
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsShipped:Z

    if-eqz v2, :cond_156

    .line 986
    const v2, 0x7f0a0160

    :try_start_103
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 987
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    if-eqz v2, :cond_5a

    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a0170

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_138} :catch_13b

    move-result-object v1

    goto/16 :goto_5a

    .line 990
    :catch_13b
    move-exception v0

    .line 991
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 998
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_156
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Delivered:Z

    if-eqz v2, :cond_1ae

    .line 1000
    invoke-static {p1}, Lcom/samsung/privilege/UserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18a

    .line 1006
    const v2, 0x7f0a015e

    :try_start_169
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_16c} :catch_16f

    move-result-object v1

    goto/16 :goto_5a

    .line 1007
    :catch_16f
    move-exception v0

    .line 1008
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 1017
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_18a
    const v2, 0x7f0a0167

    :try_start_18d
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_190} :catch_193

    move-result-object v1

    goto/16 :goto_5a

    .line 1018
    :catch_193
    move-exception v0

    .line 1019
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 1024
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1ae
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsSpecificPrintVoucher:Z

    if-eqz v2, :cond_1d6

    .line 1031
    const v2, 0x7f0a0163

    :try_start_1b5
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1b8} :catch_1bb

    move-result-object v1

    goto/16 :goto_5a

    .line 1032
    :catch_1bb
    move-exception v0

    .line 1033
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 1037
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d6
    iget v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ExpireIn:I

    if-ltz v2, :cond_5a

    .line 1044
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    if-nez v2, :cond_5a

    .line 1053
    const v2, 0x7f0a0165

    :try_start_1e1
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e4} :catch_1e7

    move-result-object v1

    goto/16 :goto_5a

    .line 1054
    :catch_1e7
    move-exception v0

    .line 1055
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 1067
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_202
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1070
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->HasWinner:Z

    if-eqz v2, :cond_272

    .line 1071
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsWinner:Z

    if-eqz v2, :cond_24e

    .line 1077
    const v2, 0x7f0a016a

    :try_start_217
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_21a} :catch_234

    move-result-object v1

    .line 1082
    :goto_21b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1083
    goto/16 :goto_5a

    .line 1078
    :catch_234
    move-exception v0

    .line 1079
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21b

    .line 1088
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24e
    const v2, 0x7f0a0169

    :try_start_251
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_254} :catch_257

    move-result-object v1

    goto/16 :goto_5a

    .line 1089
    :catch_257
    move-exception v0

    .line 1090
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 1100
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_272
    const v2, 0x7f0a0168

    :try_start_275
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_278} :catch_27b

    move-result-object v1

    goto/16 :goto_5a

    .line 1101
    :catch_27b
    move-exception v0

    .line 1102
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    .line 1108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_296
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1111
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->HasWinner:Z

    if-eqz v2, :cond_5a

    .line 1112
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsWinner:Z

    if-eqz v2, :cond_2e2

    .line 1118
    const v2, 0x7f0a016a

    :try_start_2ab
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2ae} :catch_2c8

    move-result-object v1

    .line 1123
    :goto_2af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1124
    goto/16 :goto_5a

    .line 1119
    :catch_2c8
    move-exception v0

    .line 1120
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2af

    .line 1129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2e2
    const v2, 0x7f0a0169

    :try_start_2e5
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_2e8} :catch_2eb

    move-result-object v1

    goto/16 :goto_5a

    .line 1130
    :catch_2eb
    move-exception v0

    .line 1131
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a
.end method

.method public static loadImageAnimate(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/16 v3, 0x64

    .line 872
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 873
    .local v0, "animDraw":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020262

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 874
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 875
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 876
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 877
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 878
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 879
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 880
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 881
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 882
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020263

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 883
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020264

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 884
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020265

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 885
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 886
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020267

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 887
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020268

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 888
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 889
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 891
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 893
    new-instance v1, Lcom/samsung/privilege/util/DialogUtil$14;

    invoke-direct {v1, v0}, Lcom/samsung/privilege/util/DialogUtil$14;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 899
    return-void
.end method

.method public static showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 14
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "is_auto_login_fb"    # Z

    .prologue
    .line 301
    move-object v9, p0

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_b6

    .line 302
    new-instance v1, Landroid/app/Dialog;

    const v9, 0x1030010

    invoke-direct {v1, p0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 304
    .local v1, "dialogConfirm":Landroid/app/Dialog;
    const v9, 0x7f0300de

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 306
    const v9, 0x7f470002

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 307
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v9, 0x7f470004

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 308
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v9, 0x7f470005

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 309
    .local v4, "imgOk":Landroid/widget/ImageView;
    const v9, 0x7f470006

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 310
    .local v8, "tvOk":Landroid/widget/TextView;
    const v9, 0x7f470007

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 311
    .local v3, "imgNo":Landroid/widget/ImageView;
    const v9, 0x7f470008

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 313
    .local v7, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 314
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 315
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 316
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 317
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 319
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 320
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 321
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 322
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 324
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    if-eqz p2, :cond_90

    .line 327
    const v9, 0x7f0a0336

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_90
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$6;

    invoke-direct {v9, v1, v4, p0, p2}, Lcom/samsung/privilege/util/DialogUtil$6;-><init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$7;

    invoke-direct {v9, v1}, Lcom/samsung/privilege/util/DialogUtil$7;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 350
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 351
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 353
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 355
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogConfirm":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgNo":Landroid/widget/ImageView;
    .end local v4    # "imgOk":Landroid/widget/ImageView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    .end local v7    # "tvNo":Landroid/widget/TextView;
    .end local v8    # "tvOk":Landroid/widget/TextView;
    :cond_b6
    return-void
.end method

.method public static showDialogContinueUrl(Landroid/app/Activity;Landroid/os/Handler;Lcom/samsung/privilege/bean/CampaignView;Lcom/bitmapfun/util/ImageFetcher;Lcom/samsung/privilege/bean/NFCTag;)V
    .registers 29
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "campaign"    # Lcom/samsung/privilege/bean/CampaignView;
    .param p3, "pImageFetcher"    # Lcom/bitmapfun/util/ImageFetcher;
    .param p4, "paramNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 1850
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1a6

    .line 1851
    new-instance v13, Landroid/app/Dialog;

    const v3, 0x1030010

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1853
    .local v13, "dialogSerial":Landroid/app/Dialog;
    const v3, 0x7f0300da

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1855
    const/high16 v3, 0x7f1f0000

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 1856
    .local v19, "layoutHeader":Landroid/widget/RelativeLayout;
    const v3, 0x7f1f0001

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 1857
    .local v16, "imgCampaign":Landroid/widget/ImageView;
    const v3, 0x7f1f0002

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1858
    .local v21, "tvCampaign":Landroid/widget/TextView;
    const v3, 0x7f1f000c

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 1859
    .local v2, "webPrivilegeMessage":Landroid/webkit/WebView;
    const v3, 0x7f1f000a

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1860
    .local v17, "imgClose":Landroid/widget/ImageView;
    const v3, 0x7f1f000d

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1861
    .local v18, "imgContinue":Landroid/widget/ImageView;
    const v3, 0x7f1f000b

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1862
    .local v22, "tvClose":Landroid/widget/TextView;
    const v3, 0x7f1f000e

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1864
    .local v23, "tvContinue":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    .line 1865
    .local v14, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1866
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1867
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1869
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1870
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1871
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1873
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1875
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1876
    .local v12, "color":I
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    const-string v5, "GIFT_CAT_RESTAURANT"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    .line 1877
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1878
    const v3, 0x7f02008e

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1893
    :goto_cc
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "<font size=\'+2\'>"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</font><br>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1894
    .local v20, "str_message":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<font size=\'+1\'>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</font>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1895
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "<head><style>@font-face {font-family: \'verdana\';src: url(\'file:///android_asset/"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\');}body {font-family: \'verdana\';font-size:18pt;font-style:normal;}</style></head>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1896
    .local v15, "head":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "<html>"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<body>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</body></html>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1897
    .local v4, "htmlData":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "api/campaign/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/picture"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1900
    .local v6, "img_campaign":Ljava/lang/String;
    const/4 v8, 0x0

    const v9, 0x7f02039f

    const/4 v10, 0x0

    move-object/from16 v5, p3

    move-object/from16 v7, v16

    invoke-virtual/range {v5 .. v10}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1902
    new-instance v3, Lcom/samsung/privilege/util/DialogUtil$17;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v3, v13, v0, v1}, Lcom/samsung/privilege/util/DialogUtil$17;-><init>(Landroid/app/Dialog;Lcom/samsung/privilege/bean/CampaignView;Landroid/app/Activity;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2014
    new-instance v3, Lcom/samsung/privilege/util/DialogUtil$18;

    invoke-direct {v3, v13}, Lcom/samsung/privilege/util/DialogUtil$18;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2021
    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 2022
    .local v11, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2023
    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2025
    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    .line 2027
    .end local v2    # "webPrivilegeMessage":Landroid/webkit/WebView;
    .end local v4    # "htmlData":Ljava/lang/String;
    .end local v6    # "img_campaign":Ljava/lang/String;
    .end local v11    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "color":I
    .end local v13    # "dialogSerial":Landroid/app/Dialog;
    .end local v14    # "font":Landroid/graphics/Typeface;
    .end local v15    # "head":Ljava/lang/String;
    .end local v16    # "imgCampaign":Landroid/widget/ImageView;
    .end local v17    # "imgClose":Landroid/widget/ImageView;
    .end local v18    # "imgContinue":Landroid/widget/ImageView;
    .end local v19    # "layoutHeader":Landroid/widget/RelativeLayout;
    .end local v20    # "str_message":Ljava/lang/String;
    .end local v21    # "tvCampaign":Landroid/widget/TextView;
    .end local v22    # "tvClose":Landroid/widget/TextView;
    .end local v23    # "tvContinue":Landroid/widget/TextView;
    :cond_1a6
    return-void

    .line 1879
    .restart local v2    # "webPrivilegeMessage":Landroid/webkit/WebView;
    .restart local v12    # "color":I
    .restart local v13    # "dialogSerial":Landroid/app/Dialog;
    .restart local v14    # "font":Landroid/graphics/Typeface;
    .restart local v16    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v17    # "imgClose":Landroid/widget/ImageView;
    .restart local v18    # "imgContinue":Landroid/widget/ImageView;
    .restart local v19    # "layoutHeader":Landroid/widget/RelativeLayout;
    .restart local v21    # "tvCampaign":Landroid/widget/TextView;
    .restart local v22    # "tvClose":Landroid/widget/TextView;
    .restart local v23    # "tvContinue":Landroid/widget/TextView;
    :cond_1a7
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    const-string v5, "GIFT_CAT_DESSERTS"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ce

    .line 1880
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1881
    const v3, 0x7f02008f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_cc

    .line 1882
    :cond_1ce
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    const-string v5, "GIFT_CAT_BEAUTY"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f5

    .line 1883
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090035

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1884
    const v3, 0x7f020090

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_cc

    .line 1885
    :cond_1f5
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    const-string v5, "GIFT_CAT_MUSIC"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21c

    .line 1886
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090036

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1887
    const v3, 0x7f020091

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_cc

    .line 1889
    :cond_21c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1890
    const v3, 0x7f020092

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_cc
.end method

.method public static showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 359
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 360
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 362
    .local v1, "dialogError":Landroid/app/Dialog;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 364
    .local v2, "font":Landroid/graphics/Typeface;
    const v4, 0x7f0300db

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 365
    const-string v4, "Information"

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    const v4, 0x7f1e0002

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 368
    .local v3, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 369
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 370
    const v4, 0x7f1e0003

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 372
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    new-instance v4, Lcom/samsung/privilege/util/DialogUtil$8;

    invoke-direct {v4, v1}, Lcom/samsung/privilege/util/DialogUtil$8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 383
    .end local v0    # "btnClose":Landroid/widget/Button;
    .end local v1    # "dialogError":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "tvMessage":Landroid/widget/TextView;
    :cond_4f
    return-void
.end method

.method public static showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    move-object v7, p0

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_86

    .line 61
    new-instance v1, Landroid/app/Dialog;

    const v7, 0x1030010

    invoke-direct {v1, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const v7, 0x7f0300e0

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 65
    const v7, 0x7f480002

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 66
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v7, 0x7f480004

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 67
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v7, 0x7f480005

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 68
    .local v3, "imgClose":Landroid/widget/ImageView;
    const v7, 0x7f480006

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 70
    .local v4, "tvClose":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 71
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v7, Lcom/samsung/privilege/util/DialogUtil$1;

    invoke-direct {v7, v1}, Lcom/samsung/privilege/util/DialogUtil$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 88
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 89
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 91
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 93
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogSerial":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgClose":Landroid/widget/ImageView;
    .end local v4    # "tvClose":Landroid/widget/TextView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    :cond_86
    return-void
.end method

.method public static showDialogNFC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;)V
    .registers 36
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "campaign_id"    # Ljava/lang/String;
    .param p2, "agencyname"    # Ljava/lang/String;
    .param p3, "location_agency_id"    # I
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "serial"    # Ljava/lang/String;
    .param p6, "privilege_message"    # Ljava/lang/String;
    .param p7, "redeem_date"    # J
    .param p9, "cat_id"    # Ljava/lang/String;
    .param p10, "pImageFetcher"    # Lcom/bitmapfun/util/ImageFetcher;
    .param p11, "strNFCWriteBack"    # Ljava/lang/String;

    .prologue
    .line 2081
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_192

    .line 2083
    new-instance v11, Landroid/app/Dialog;

    const v3, 0x1030010

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2085
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const v3, 0x7f0300e2

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2087
    const/high16 v3, 0x7f4a0000

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 2088
    .local v15, "layoutHeader":Landroid/widget/RelativeLayout;
    const v3, 0x7f4a0001

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2089
    .local v5, "imgCampaign":Landroid/widget/ImageView;
    const v3, 0x7f4a0002

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2090
    .local v18, "tvCampaign":Landroid/widget/TextView;
    const v3, 0x7f4a0005

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 2091
    .local v22, "tvSerial":Landroid/widget/TextView;
    const v3, 0x7f4a0006

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 2092
    .local v20, "tvPrivilegeMessage":Landroid/widget/TextView;
    const v3, 0x7f4a0007

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 2093
    .local v23, "tvStatus":Landroid/widget/TextView;
    const v3, 0x7f4a000a

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 2094
    .local v13, "imgClose":Landroid/widget/ImageView;
    const v3, 0x7f4a0008

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 2095
    .local v14, "imgReTry":Landroid/widget/ImageView;
    const v3, 0x7f4a000b

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 2096
    .local v19, "tvClose":Landroid/widget/TextView;
    const v3, 0x7f4a0009

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2098
    .local v21, "tvReTry":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 2099
    .local v12, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2100
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2101
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2102
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2103
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2105
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2106
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2107
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2108
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2109
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2111
    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2112
    const/4 v3, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2114
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2115
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2117
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090037

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2118
    .local v10, "color":I
    const-string v3, "GIFT_CAT_RESTAURANT"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2119
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090033

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2120
    const v3, 0x7f02008e

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2134
    :goto_11a
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2137
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/campaign/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/picture"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2138
    .local v4, "img_campaign":Ljava/lang/String;
    const/4 v6, 0x0

    const v7, 0x7f02039f

    const/4 v8, 0x0

    move-object/from16 v3, p10

    invoke-virtual/range {v3 .. v8}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2140
    new-instance v16, Lcom/samsung/privilege/util/DialogUtil$19;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/util/DialogUtil$19;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    .line 2174
    .local v16, "runnable":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2176
    new-instance v3, Lcom/samsung/privilege/util/DialogUtil$20;

    invoke-direct {v3, v11}, Lcom/samsung/privilege/util/DialogUtil$20;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2184
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 2185
    .local v9, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2186
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2188
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 2193
    new-instance v17, Lcom/samsung/privilege/util/DialogUtil$21;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/util/DialogUtil$21;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    .line 2218
    .local v17, "runnable2":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2221
    .end local v4    # "img_campaign":Ljava/lang/String;
    .end local v5    # "imgCampaign":Landroid/widget/ImageView;
    .end local v9    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "color":I
    .end local v11    # "dialogSerial":Landroid/app/Dialog;
    .end local v12    # "font":Landroid/graphics/Typeface;
    .end local v13    # "imgClose":Landroid/widget/ImageView;
    .end local v14    # "imgReTry":Landroid/widget/ImageView;
    .end local v15    # "layoutHeader":Landroid/widget/RelativeLayout;
    .end local v16    # "runnable":Ljava/lang/Runnable;
    .end local v17    # "runnable2":Ljava/lang/Runnable;
    .end local v18    # "tvCampaign":Landroid/widget/TextView;
    .end local v19    # "tvClose":Landroid/widget/TextView;
    .end local v20    # "tvPrivilegeMessage":Landroid/widget/TextView;
    .end local v21    # "tvReTry":Landroid/widget/TextView;
    .end local v22    # "tvSerial":Landroid/widget/TextView;
    .end local v23    # "tvStatus":Landroid/widget/TextView;
    :cond_192
    return-void

    .line 2121
    .restart local v5    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v10    # "color":I
    .restart local v11    # "dialogSerial":Landroid/app/Dialog;
    .restart local v12    # "font":Landroid/graphics/Typeface;
    .restart local v13    # "imgClose":Landroid/widget/ImageView;
    .restart local v14    # "imgReTry":Landroid/widget/ImageView;
    .restart local v15    # "layoutHeader":Landroid/widget/RelativeLayout;
    .restart local v18    # "tvCampaign":Landroid/widget/TextView;
    .restart local v19    # "tvClose":Landroid/widget/TextView;
    .restart local v20    # "tvPrivilegeMessage":Landroid/widget/TextView;
    .restart local v21    # "tvReTry":Landroid/widget/TextView;
    .restart local v22    # "tvSerial":Landroid/widget/TextView;
    .restart local v23    # "tvStatus":Landroid/widget/TextView;
    :cond_193
    const-string v3, "GIFT_CAT_DESSERTS"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 2122
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090034

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2123
    const v3, 0x7f02008f

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_11a

    .line 2124
    :cond_1b6
    const-string v3, "GIFT_CAT_BEAUTY"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d9

    .line 2125
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090035

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2126
    const v3, 0x7f020090

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_11a

    .line 2127
    :cond_1d9
    const-string v3, "GIFT_CAT_MUSIC"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 2128
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090036

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2129
    const v3, 0x7f020091

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_11a

    .line 2131
    :cond_1fc
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090037

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2132
    const v3, 0x7f020092

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_11a
.end method

.method public static showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 96
    move-object v9, p0

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_aa

    .line 97
    new-instance v1, Landroid/app/Dialog;

    const v9, 0x1030010

    invoke-direct {v1, p0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 99
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v9, 0x7f0300e3

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 101
    const v9, 0x7f4b0002

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 102
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v9, 0x7f4b0004

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 103
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v9, 0x7f4b0005

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 104
    .local v4, "imgOk":Landroid/widget/ImageView;
    const v9, 0x7f4b0006

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 105
    .local v8, "tvOk":Landroid/widget/TextView;
    const v9, 0x7f4b0007

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 106
    .local v3, "imgNo":Landroid/widget/ImageView;
    const v9, 0x7f4b0008

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 108
    .local v7, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 109
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$2;

    invoke-direct {v9, v1, v4, p0}, Lcom/samsung/privilege/util/DialogUtil$2;-><init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$3;

    invoke-direct {v9, v1}, Lcom/samsung/privilege/util/DialogUtil$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 141
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 142
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 144
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 146
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogPoint":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgNo":Landroid/widget/ImageView;
    .end local v4    # "imgOk":Landroid/widget/ImageView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    .end local v7    # "tvNo":Landroid/widget/TextView;
    .end local v8    # "tvOk":Landroid/widget/TextView;
    :cond_aa
    return-void
.end method

.method public static showDialogPointTransferConfirm(Landroid/content/Context;)V
    .registers 12
    .param p0, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 149
    move-object v9, p0

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_c5

    .line 150
    new-instance v1, Landroid/app/Dialog;

    const v9, 0x1030010

    invoke-direct {v1, p0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 152
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v9, 0x7f0300e3

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 154
    const v9, 0x7f4b0002

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 155
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v9, 0x7f4b0004

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 156
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v9, 0x7f4b0005

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 157
    .local v4, "imgOk":Landroid/widget/ImageView;
    const v9, 0x7f4b0006

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 158
    .local v8, "tvOk":Landroid/widget/TextView;
    const v9, 0x7f4b0007

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 159
    .local v3, "imgNo":Landroid/widget/ImageView;
    const v9, 0x7f4b0008

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 161
    .local v7, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 162
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 170
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 172
    const v9, 0x7f0a032b

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const v9, 0x7f0a032e

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v9, 0x7f0a0330

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$4;

    invoke-direct {v9, v1, p0}, Lcom/samsung/privilege/util/DialogUtil$4;-><init>(Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$5;

    invoke-direct {v9, v1, p0}, Lcom/samsung/privilege/util/DialogUtil$5;-><init>(Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 197
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 198
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 200
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 202
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogPoint":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgNo":Landroid/widget/ImageView;
    .end local v4    # "imgOk":Landroid/widget/ImageView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    .end local v7    # "tvNo":Landroid/widget/TextView;
    .end local v8    # "tvOk":Landroid/widget/TextView;
    :cond_c5
    return-void
.end method

.method public static showDialogSerial3TypeCode(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    .registers 79
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "purchasing"    # Lcom/samsung/privilege/bean/Purchasing;
    .param p2, "currentDate"    # J
    .param p4, "pIntID"    # I
    .param p5, "pStrAgencyName"    # Ljava/lang/String;
    .param p6, "pStrName"    # Ljava/lang/String;
    .param p7, "plngExpireIn"    # J
    .param p9, "pStrSerial"    # Ljava/lang/String;
    .param p10, "pStrBarcode"    # Ljava/lang/String;
    .param p11, "pStrPrivilegeMessage"    # Ljava/lang/String;
    .param p12, "pImageFetcher"    # Lcom/bitmapfun/util/ImageFetcher;
    .param p13, "type"    # Ljava/lang/String;
    .param p14, "objHandler"    # Landroid/os/Handler;
    .param p15, "paramNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 869
    :goto_6
    return-void

    .line 393
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 395
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogUtil;->genPrivilegeMessageOfFrontend(Ljava/lang/String;Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;)Ljava/lang/String;

    move-result-object v47

    .line 400
    .local v47, "privilege_message_regen":Ljava/lang/String;
    new-instance v37, Landroid/app/Dialog;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 401
    .local v37, "dialogSerial":Landroid/app/Dialog;
    const/4 v4, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 402
    const v4, 0x7f0300e5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 410
    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 413
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v7, 0x3

    if-eq v4, v7, :cond_4f

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v7, 0x4

    if-ne v4, v7, :cond_427

    .line 414
    :cond_4f
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v62

    .line 415
    .local v62, "window":Landroid/view/Window;
    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v7, v4

    const-wide v11, 0x3feccccccccccccdL

    mul-double/2addr v7, v11

    double-to-int v4, v7

    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v7, v7

    const-wide v11, 0x3fe6666666666666L

    mul-double/2addr v7, v11

    double-to-int v7, v7

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v7}, Landroid/view/Window;->setLayout(II)V

    .line 416
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    :goto_8b
    const v4, 0x7f0700a5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 434
    .local v6, "imgCampaign":Landroid/widget/ImageView;
    const v4, 0x7f0700a6

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    .line 435
    .local v53, "tvCampaignDesc":Landroid/widget/TextView;
    const v4, 0x7f070321

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/TextView;

    .line 436
    .local v55, "tvExtraData":Landroid/widget/TextView;
    const v4, 0x7f07031e

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 437
    .local v15, "tvSerialNumber":Landroid/widget/TextView;
    const v4, 0x7f07031f

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    .line 438
    .local v57, "tvSerialBarcode":Landroid/widget/TextView;
    const v4, 0x7f070320

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/TextView;

    .line 442
    .local v58, "tvSerialQRcode":Landroid/widget/TextView;
    const v4, 0x7f0700d2

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageView;

    .line 443
    .local v41, "imgBarcode":Landroid/widget/ImageView;
    const v4, 0x7f0700d9

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/TextView;

    .line 444
    .local v54, "tvCodeSmall":Landroid/widget/TextView;
    const v4, 0x7f0700dc

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/TextView;

    .line 445
    .local v59, "tvSerialSmall":Landroid/widget/TextView;
    const v4, 0x7f0700d1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 447
    .local v16, "contentBarcode":Landroid/widget/LinearLayout;
    const v4, 0x7f0700d5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/ImageView;

    .line 448
    .local v42, "imgQRcode":Landroid/widget/ImageView;
    const v4, 0x7f0700df

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    .line 449
    .local v56, "tvQRSmall":Landroid/widget/TextView;
    const v4, 0x7f0700d4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 452
    .local v17, "contentQRCode":Landroid/widget/LinearLayout;
    const v4, 0x7f0700d7

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 453
    .local v18, "btnSwithToBarcode":Landroid/widget/LinearLayout;
    const v4, 0x7f0700da

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 454
    .local v19, "btnSwithToSerial":Landroid/widget/LinearLayout;
    const v4, 0x7f0700dd

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 455
    .local v20, "btnSwithToQRCode":Landroid/widget/LinearLayout;
    const v4, 0x7f0700e1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 456
    .local v22, "tvTitleTime":Landroid/widget/TextView;
    const v4, 0x7f0700e3

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 458
    .local v23, "tvTimeLeft":Landroid/widget/TextView;
    const v4, 0x7f0700cd

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/RelativeLayout;

    .line 459
    .local v45, "layoutPrivilegeMessage":Landroid/widget/RelativeLayout;
    const v4, 0x7f0700ce

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/RelativeLayout;

    .line 460
    .local v44, "layout3Code":Landroid/widget/RelativeLayout;
    const v4, 0x7f070068

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/webkit/WebView;

    .line 462
    .local v61, "webPrivilegeMessage":Landroid/webkit/WebView;
    const v4, 0x7f04002e

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v28

    .line 463
    .local v28, "animation1":Landroid/view/animation/Animation;
    const v4, 0x7f040008

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v32

    .line 465
    .local v32, "animation2":Landroid/view/animation/Animation;
    const v4, 0x7f0700af

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/Button;

    .line 466
    .local v36, "btnClose":Landroid/widget/Button;
    const v4, 0x7f0700a7

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v60

    check-cast v60, Landroid/widget/TextView;

    .line 467
    .local v60, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v49, Ljava/text/SimpleDateFormat;

    const-string v4, "dd MMM yyyy HH:mm"

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 468
    .local v49, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v50

    .line 472
    .local v50, "strRedeemDate":Ljava/lang/String;
    if-eqz p1, :cond_1d0

    .line 473
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    const-wide/16 v24, 0x6270

    sub-long v11, v11, v24

    const-wide/16 v24, 0x3e8

    mul-long v11, v11, v24

    invoke-direct {v7, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v50

    .line 475
    :cond_1d0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v7, 0x7f0a0261

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    const v4, 0x7f0700e2

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 480
    .local v21, "imgProgress":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->loadImageAnimate(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 483
    :try_start_211
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v39

    .line 484
    .local v39, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v53

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 485
    move-object/from16 v0, v55

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 486
    move-object/from16 v0, v57

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 487
    move-object/from16 v0, v58

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 488
    move-object/from16 v0, v54

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 489
    move-object/from16 v0, v59

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 490
    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 491
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 492
    move-object/from16 v0, v60

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 493
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 495
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 496
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 497
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 498
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 499
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 500
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 501
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 502
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 503
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 504
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextSize(F)V
    :try_end_2bd
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_2bd} :catch_6fe

    .line 511
    .end local v39    # "font":Landroid/graphics/Typeface;
    :goto_2bd
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "api/campaign/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/picture/modifydate="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "img_url":Ljava/lang/String;
    const/4 v7, 0x0

    const v8, 0x7f02039f

    const/4 v9, 0x0

    move-object/from16 v4, p12

    invoke-virtual/range {v4 .. v9}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    const-string v46, ""

    .line 524
    .local v46, "message_extra_data":Ljava/lang/String;
    if-eqz v47, :cond_356

    const-string v4, ""

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_356

    .line 525
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "<barcode>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32a

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "&lt;barcode&gt;"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_356

    .line 526
    :cond_32a
    move-object/from16 v46, v47

    .line 527
    const-string v4, "<barcode>"

    const-string v7, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 528
    const-string v4, "&lt;barcode&gt;"

    const-string v7, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 529
    const-string v4, "<serial>"

    move-object/from16 v0, v46

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 530
    const-string v4, "&lt;serial&gt;"

    move-object/from16 v0, v46

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 531
    const-string v47, ""

    .line 535
    :cond_356
    if-eqz v47, :cond_4ff

    const-string v4, ""

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4ff

    .line 536
    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 537
    const/16 v4, 0x8

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 538
    const/16 v4, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    const-string v4, "&lt;"

    const-string v7, "<"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "&gt;"

    const-string v8, ">"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 541
    .local v52, "str_privilege_message":Ljava/lang/String;
    const-string v4, "<serial>"

    move-object/from16 v0, v52

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "<head><style>@font-face {font-family: \'verdana\';src: url(\'file:///android_asset/"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\');}body {font-family: \'verdana\';font-size:18pt;font-style:normal;}</style></head>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 544
    .local v40, "head":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "<html>"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<body>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "</body></html>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 545
    .local v9, "htmlData":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v10, "text/html"

    const-string v11, "utf-8"

    const/4 v12, 0x0

    move-object/from16 v7, v61

    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .end local v9    # "htmlData":Ljava/lang/String;
    .end local v40    # "head":Ljava/lang/String;
    .end local v52    # "str_privilege_message":Ljava/lang/String;
    :goto_3d9
    new-instance v4, Lcom/samsung/privilege/util/DialogUtil$13;

    move-object/from16 v0, p15

    move-object/from16 v1, p0

    move-object/from16 v2, p14

    move-object/from16 v3, v37

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogUtil$13;-><init>(Lcom/samsung/privilege/bean/NFCTag;Landroid/app/Activity;Landroid/os/Handler;Landroid/app/Dialog;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 856
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v34

    .line 857
    .local v34, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    move-object/from16 v0, v34

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 858
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 861
    const/16 v33, 0x64

    .line 862
    .local v33, "TARGET_BRIGHTNESS":I
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/ScreenUtil;->getBrightnessMode(Landroid/app/Activity;)I

    move-result v4

    if-nez v4, :cond_419

    .line 863
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/ScreenUtil;->getBrightnessLevel(Landroid/app/Activity;)I

    move-result v4

    sput v4, Lic/buzzebeeslib/util/ScreenUtil;->DEFAULT_MANUAL:I

    .line 864
    const/16 v4, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1, v4}, Lic/buzzebeeslib/util/ScreenUtil;->setBrightness(Landroid/app/Activity;II)V

    .line 866
    :cond_419
    const/16 v4, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1, v4}, Lic/buzzebeeslib/util/ScreenUtil;->setBrightness(Landroid/app/Activity;II)V

    .line 868
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->show()V

    goto/16 :goto_6

    .line 417
    .end local v5    # "img_url":Ljava/lang/String;
    .end local v6    # "imgCampaign":Landroid/widget/ImageView;
    .end local v15    # "tvSerialNumber":Landroid/widget/TextView;
    .end local v16    # "contentBarcode":Landroid/widget/LinearLayout;
    .end local v17    # "contentQRCode":Landroid/widget/LinearLayout;
    .end local v18    # "btnSwithToBarcode":Landroid/widget/LinearLayout;
    .end local v19    # "btnSwithToSerial":Landroid/widget/LinearLayout;
    .end local v20    # "btnSwithToQRCode":Landroid/widget/LinearLayout;
    .end local v21    # "imgProgress":Landroid/widget/ImageView;
    .end local v22    # "tvTitleTime":Landroid/widget/TextView;
    .end local v23    # "tvTimeLeft":Landroid/widget/TextView;
    .end local v28    # "animation1":Landroid/view/animation/Animation;
    .end local v32    # "animation2":Landroid/view/animation/Animation;
    .end local v33    # "TARGET_BRIGHTNESS":I
    .end local v34    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v36    # "btnClose":Landroid/widget/Button;
    .end local v41    # "imgBarcode":Landroid/widget/ImageView;
    .end local v42    # "imgQRcode":Landroid/widget/ImageView;
    .end local v44    # "layout3Code":Landroid/widget/RelativeLayout;
    .end local v45    # "layoutPrivilegeMessage":Landroid/widget/RelativeLayout;
    .end local v46    # "message_extra_data":Ljava/lang/String;
    .end local v49    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v50    # "strRedeemDate":Ljava/lang/String;
    .end local v53    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v54    # "tvCodeSmall":Landroid/widget/TextView;
    .end local v55    # "tvExtraData":Landroid/widget/TextView;
    .end local v56    # "tvQRSmall":Landroid/widget/TextView;
    .end local v57    # "tvSerialBarcode":Landroid/widget/TextView;
    .end local v58    # "tvSerialQRcode":Landroid/widget/TextView;
    .end local v59    # "tvSerialSmall":Landroid/widget/TextView;
    .end local v60    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v61    # "webPrivilegeMessage":Landroid/webkit/WebView;
    .end local v62    # "window":Landroid/view/Window;
    :cond_427
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v7, 0x2

    if-ne v4, v7, :cond_474

    .line 418
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v62

    .line 419
    .restart local v62    # "window":Landroid/view/Window;
    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v7, v4

    const-wide v11, 0x3feccccccccccccdL

    mul-double/2addr v7, v11

    double-to-int v4, v7

    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v7, v7

    const-wide v11, 0x3fe6666666666666L

    mul-double/2addr v7, v11

    double-to-int v7, v7

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v7}, Landroid/view/Window;->setLayout(II)V

    .line 420
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8b

    .line 421
    .end local v62    # "window":Landroid/view/Window;
    :cond_474
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4c1

    .line 422
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v62

    .line 423
    .restart local v62    # "window":Landroid/view/Window;
    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v7, v4

    const-wide v11, 0x3feccccccccccccdL

    mul-double/2addr v7, v11

    double-to-int v4, v7

    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v7, v7

    const-wide v11, 0x3feccccccccccccdL

    mul-double/2addr v7, v11

    double-to-int v7, v7

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v7}, Landroid/view/Window;->setLayout(II)V

    .line 424
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8b

    .line 426
    .end local v62    # "window":Landroid/view/Window;
    :cond_4c1
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v62

    .line 427
    .restart local v62    # "window":Landroid/view/Window;
    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v7, v4

    const-wide v11, 0x3feccccccccccccdL

    mul-double/2addr v7, v11

    double-to-int v4, v7

    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v7, v7

    const-wide v11, 0x3fe6666666666666L

    mul-double/2addr v7, v11

    double-to-int v7, v7

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v7}, Landroid/view/Window;->setLayout(II)V

    .line 428
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8b

    .line 547
    .restart local v5    # "img_url":Ljava/lang/String;
    .restart local v6    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v15    # "tvSerialNumber":Landroid/widget/TextView;
    .restart local v16    # "contentBarcode":Landroid/widget/LinearLayout;
    .restart local v17    # "contentQRCode":Landroid/widget/LinearLayout;
    .restart local v18    # "btnSwithToBarcode":Landroid/widget/LinearLayout;
    .restart local v19    # "btnSwithToSerial":Landroid/widget/LinearLayout;
    .restart local v20    # "btnSwithToQRCode":Landroid/widget/LinearLayout;
    .restart local v21    # "imgProgress":Landroid/widget/ImageView;
    .restart local v22    # "tvTitleTime":Landroid/widget/TextView;
    .restart local v23    # "tvTimeLeft":Landroid/widget/TextView;
    .restart local v28    # "animation1":Landroid/view/animation/Animation;
    .restart local v32    # "animation2":Landroid/view/animation/Animation;
    .restart local v36    # "btnClose":Landroid/widget/Button;
    .restart local v41    # "imgBarcode":Landroid/widget/ImageView;
    .restart local v42    # "imgQRcode":Landroid/widget/ImageView;
    .restart local v44    # "layout3Code":Landroid/widget/RelativeLayout;
    .restart local v45    # "layoutPrivilegeMessage":Landroid/widget/RelativeLayout;
    .restart local v46    # "message_extra_data":Ljava/lang/String;
    .restart local v49    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v50    # "strRedeemDate":Ljava/lang/String;
    .restart local v53    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v54    # "tvCodeSmall":Landroid/widget/TextView;
    .restart local v55    # "tvExtraData":Landroid/widget/TextView;
    .restart local v56    # "tvQRSmall":Landroid/widget/TextView;
    .restart local v57    # "tvSerialBarcode":Landroid/widget/TextView;
    .restart local v58    # "tvSerialQRcode":Landroid/widget/TextView;
    .restart local v59    # "tvSerialSmall":Landroid/widget/TextView;
    .restart local v60    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .restart local v61    # "webPrivilegeMessage":Landroid/webkit/WebView;
    :cond_4ff
    const/16 v4, 0x8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 548
    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 550
    if-eqz p9, :cond_531

    const-string v4, ""

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_531

    .line 551
    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    move-object/from16 v0, p9

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    move-object/from16 v0, v57

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    move-object/from16 v0, v58

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :cond_531
    if-eqz v46, :cond_54c

    const-string v4, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54c

    .line 558
    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    invoke-static/range {v46 .. v46}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_54c
    :try_start_54c
    const-string v4, "CODE_128"

    move-object/from16 v0, p9

    move-object/from16 v1, v41

    invoke-static {v4, v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v43

    .line 564
    .local v43, "intent":Landroid/content/Intent;
    new-instance v48, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;

    const/16 v4, 0x1f4

    const/4 v7, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_564
    .catch Ljava/lang/Exception; {:try_start_54c .. :try_end_564} :catch_646

    .line 566
    .local v48, "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :try_start_564
    invoke-virtual/range {v48 .. v48}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v35

    .line 567
    .local v35, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_56f
    .catch Lcom/google/zxing/WriterException; {:try_start_564 .. :try_end_56f} :catch_62b
    .catch Ljava/lang/Exception; {:try_start_564 .. :try_end_56f} :catch_646

    .line 576
    .end local v35    # "bitmap":Landroid/graphics/Bitmap;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :goto_56f
    :try_start_56f
    const-string v4, "QR_CODE"

    move-object/from16 v0, p9

    move-object/from16 v1, v42

    invoke-static {v4, v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v43

    .line 577
    .restart local v43    # "intent":Landroid/content/Intent;
    new-instance v48, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;

    const/16 v4, 0x1f4

    const/4 v7, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_587
    .catch Ljava/lang/Exception; {:try_start_56f .. :try_end_587} :catch_67c

    .line 579
    .restart local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :try_start_587
    invoke-virtual/range {v48 .. v48}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v35

    .line 580
    .restart local v35    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_592
    .catch Lcom/google/zxing/WriterException; {:try_start_587 .. :try_end_592} :catch_661
    .catch Ljava/lang/Exception; {:try_start_587 .. :try_end_592} :catch_67c

    .line 588
    .end local v35    # "bitmap":Landroid/graphics/Bitmap;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :goto_592
    const v4, 0x7f0a0182

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 589
    .local v51, "strRemain":Ljava/lang/String;
    const v4, 0x7f0a016b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 590
    .local v14, "strExpire":Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v4, p7, v7

    if-lez v4, :cond_697

    .line 591
    new-instance v10, Lcom/samsung/privilege/util/DialogUtil$9;

    move-object/from16 v11, p0

    move-wide/from16 v12, p7

    invoke-direct/range {v10 .. v23}, Lcom/samsung/privilege/util/DialogUtil$9;-><init>(Landroid/app/Activity;JLjava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 666
    .local v10, "runnable":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 682
    .end local v10    # "runnable":Ljava/lang/Runnable;
    :goto_5bb
    if-eqz p10, :cond_5e1

    const-string v4, ""

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e1

    .line 683
    const-string v4, "CODE_128"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e2

    .line 684
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    const/4 v4, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 686
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 694
    :cond_5e1
    :goto_5e1
    new-instance v24, Lcom/samsung/privilege/util/DialogUtil$10;

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v27, v20

    move-object/from16 v29, v15

    move-object/from16 v30, v17

    move-object/from16 v31, v16

    invoke-direct/range {v24 .. v32}, Lcom/samsung/privilege/util/DialogUtil$10;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    new-instance v24, Lcom/samsung/privilege/util/DialogUtil$11;

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v27, v20

    move-object/from16 v29, v16

    move-object/from16 v30, v17

    move-object/from16 v31, v15

    invoke-direct/range {v24 .. v32}, Lcom/samsung/privilege/util/DialogUtil$11;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    new-instance v24, Lcom/samsung/privilege/util/DialogUtil$12;

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v27, v20

    move-object/from16 v29, v16

    move-object/from16 v30, v15

    move-object/from16 v31, v17

    invoke-direct/range {v24 .. v32}, Lcom/samsung/privilege/util/DialogUtil$12;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3d9

    .line 568
    .end local v14    # "strExpire":Ljava/lang/String;
    .end local v51    # "strRemain":Ljava/lang/String;
    .restart local v43    # "intent":Landroid/content/Intent;
    .restart local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_62b
    move-exception v38

    .line 569
    .local v38, "e":Lcom/google/zxing/WriterException;
    :try_start_62c
    const-string v4, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(WriterException):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_644
    .catch Ljava/lang/Exception; {:try_start_62c .. :try_end_644} :catch_646

    goto/16 :goto_56f

    .line 571
    .end local v38    # "e":Lcom/google/zxing/WriterException;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_646
    move-exception v38

    .line 572
    .local v38, "e":Ljava/lang/Exception;
    const-string v4, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(Exception):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56f

    .line 581
    .end local v38    # "e":Ljava/lang/Exception;
    .restart local v43    # "intent":Landroid/content/Intent;
    .restart local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_661
    move-exception v38

    .line 582
    .local v38, "e":Lcom/google/zxing/WriterException;
    :try_start_662
    const-string v4, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(WriterException):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67a
    .catch Ljava/lang/Exception; {:try_start_662 .. :try_end_67a} :catch_67c

    goto/16 :goto_592

    .line 584
    .end local v38    # "e":Lcom/google/zxing/WriterException;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_67c
    move-exception v38

    .line 585
    .local v38, "e":Ljava/lang/Exception;
    const-string v4, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(Exception):"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_592

    .line 668
    .end local v38    # "e":Ljava/lang/Exception;
    .restart local v14    # "strExpire":Ljava/lang/String;
    .restart local v51    # "strRemain":Ljava/lang/String;
    :cond_697
    const-wide/16 v7, 0x0

    cmp-long v4, p7, v7

    if-gez v4, :cond_6d2

    .line 669
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 671
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 672
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 674
    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 675
    const/16 v4, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5bb

    .line 678
    :cond_6d2
    const v4, 0x7f0700e0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5bb

    .line 687
    :cond_6e2
    const-string v4, "QR_CODE"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e1

    .line 688
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 689
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 690
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5e1

    .line 505
    .end local v5    # "img_url":Ljava/lang/String;
    .end local v14    # "strExpire":Ljava/lang/String;
    .end local v46    # "message_extra_data":Ljava/lang/String;
    .end local v51    # "strRemain":Ljava/lang/String;
    :catch_6fe
    move-exception v4

    goto/16 :goto_2bd
.end method

.method private static showDialogSerialBarcode(Landroid/app/Activity;Landroid/os/Handler;Lcom/samsung/privilege/bean/Purchasing;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;Lcom/samsung/privilege/bean/NFCTag;)V
    .registers 64
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "objHandler"    # Landroid/os/Handler;
    .param p2, "purchasing"    # Lcom/samsung/privilege/bean/Purchasing;
    .param p3, "campaign_id"    # Ljava/lang/String;
    .param p4, "agencyid"    # Ljava/lang/String;
    .param p5, "agencyname"    # Ljava/lang/String;
    .param p6, "location_agency_id"    # I
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "serial"    # Ljava/lang/String;
    .param p9, "barcode_type"    # Ljava/lang/String;
    .param p10, "privilege_message"    # Ljava/lang/String;
    .param p11, "redeem_date"    # J
    .param p13, "minutes_valid_after_used"    # I
    .param p14, "cat_id"    # Ljava/lang/String;
    .param p15, "server_time"    # J
    .param p17, "local_time"    # J
    .param p19, "pImageFetcher"    # Lcom/bitmapfun/util/ImageFetcher;
    .param p20, "paramNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 1625
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2a2

    .line 1627
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v8, 0x3e8

    mul-long v8, v8, p15

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    .line 1628
    .local v38, "strserver_time":Ljava/lang/String;
    const-string v4, "DialogUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "server_time("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p15

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v8, 0x3e8

    mul-long v8, v8, p17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 1631
    .local v36, "strlocal_time":Ljava/lang/String;
    const-string v4, "DialogUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "local_time("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p17

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v8, 0x3e8

    mul-long v8, v8, p11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 1634
    .local v37, "strredeem_date":Ljava/lang/String;
    const-string v4, "DialogUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "redeem_date("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p11

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    new-instance v26, Landroid/app/Dialog;

    const v4, 0x1030010

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1638
    .local v26, "dialogSerial":Landroid/app/Dialog;
    const v4, 0x7f0300e6

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 1640
    const/high16 v4, 0x7f1f0000

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/RelativeLayout;

    .line 1641
    .local v32, "layoutHeader":Landroid/widget/RelativeLayout;
    const v4, 0x7f1f0001

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1642
    .local v6, "imgCampaign":Landroid/widget/ImageView;
    const v4, 0x7f1f0002

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 1643
    .local v39, "tvCampaign":Landroid/widget/TextView;
    const v4, 0x7f1f000f

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 1644
    .local v20, "imgBarcode":Landroid/widget/ImageView;
    const v4, 0x7f1f0005

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1645
    .local v19, "tvSerial":Landroid/widget/TextView;
    const v4, 0x7f1f0006

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 1646
    .local v42, "tvPrivilegeMessage":Landroid/widget/TextView;
    const v4, 0x7f1f0007

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1647
    .local v21, "tvDateTime":Landroid/widget/TextView;
    const v4, 0x7f1f000a

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    .line 1648
    .local v29, "imgClose":Landroid/widget/ImageView;
    const v4, 0x7f1f0008

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    .line 1649
    .local v30, "imgHistory":Landroid/widget/ImageView;
    const v4, 0x7f1f000b

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 1650
    .local v40, "tvClose":Landroid/widget/TextView;
    const v4, 0x7f1f0009

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 1652
    .local v41, "tvHistory":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v28

    .line 1653
    .local v28, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1654
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1655
    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1656
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1657
    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1659
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1660
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1661
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1662
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1663
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1665
    const/4 v4, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1666
    const/4 v4, 0x4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1668
    move-object/from16 v0, v39

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f090037

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    .line 1671
    .local v25, "color":I
    const-string v4, "GIFT_CAT_RESTAURANT"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a3

    .line 1672
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f090033

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    .line 1673
    const v4, 0x7f02008e

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1687
    :goto_1da
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1689
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    const-wide/16 v9, 0x6270

    sub-long v9, p11, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v34

    .line 1690
    .local v34, "strRedeemDate":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "| "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " |"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "api/campaign/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/picture"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1694
    .local v5, "img_campaign":Ljava/lang/String;
    const/4 v7, 0x0

    const v8, 0x7f02039f

    const/4 v9, 0x0

    move-object/from16 v4, p19

    invoke-virtual/range {v4 .. v9}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1698
    const-string v4, ""

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_327

    .line 1699
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1700
    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1701
    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1702
    move-object/from16 v35, p10

    .line 1703
    .local v35, "str_privilege_message":Ljava/lang/String;
    const-string v4, "<serial>"

    move-object/from16 v0, v35

    move-object/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1704
    invoke-static/range {v35 .. v35}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1817
    .end local v35    # "str_privilege_message":Ljava/lang/String;
    :cond_276
    :goto_276
    new-instance v4, Lcom/samsung/privilege/util/DialogUtil$16;

    move-object/from16 v0, p20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogUtil$16;-><init>(Lcom/samsung/privilege/bean/NFCTag;Landroid/app/Activity;Landroid/os/Handler;Landroid/app/Dialog;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1840
    invoke-virtual/range {v26 .. v26}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v23

    .line 1841
    .local v23, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    move-object/from16 v0, v23

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1842
    invoke-virtual/range {v26 .. v26}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1844
    invoke-virtual/range {v26 .. v26}, Landroid/app/Dialog;->show()V

    .line 1846
    .end local v5    # "img_campaign":Ljava/lang/String;
    .end local v6    # "imgCampaign":Landroid/widget/ImageView;
    .end local v19    # "tvSerial":Landroid/widget/TextView;
    .end local v20    # "imgBarcode":Landroid/widget/ImageView;
    .end local v21    # "tvDateTime":Landroid/widget/TextView;
    .end local v23    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v25    # "color":I
    .end local v26    # "dialogSerial":Landroid/app/Dialog;
    .end local v28    # "font":Landroid/graphics/Typeface;
    .end local v29    # "imgClose":Landroid/widget/ImageView;
    .end local v30    # "imgHistory":Landroid/widget/ImageView;
    .end local v32    # "layoutHeader":Landroid/widget/RelativeLayout;
    .end local v34    # "strRedeemDate":Ljava/lang/String;
    .end local v36    # "strlocal_time":Ljava/lang/String;
    .end local v37    # "strredeem_date":Ljava/lang/String;
    .end local v38    # "strserver_time":Ljava/lang/String;
    .end local v39    # "tvCampaign":Landroid/widget/TextView;
    .end local v40    # "tvClose":Landroid/widget/TextView;
    .end local v41    # "tvHistory":Landroid/widget/TextView;
    .end local v42    # "tvPrivilegeMessage":Landroid/widget/TextView;
    :cond_2a2
    return-void

    .line 1674
    .restart local v6    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v19    # "tvSerial":Landroid/widget/TextView;
    .restart local v20    # "imgBarcode":Landroid/widget/ImageView;
    .restart local v21    # "tvDateTime":Landroid/widget/TextView;
    .restart local v25    # "color":I
    .restart local v26    # "dialogSerial":Landroid/app/Dialog;
    .restart local v28    # "font":Landroid/graphics/Typeface;
    .restart local v29    # "imgClose":Landroid/widget/ImageView;
    .restart local v30    # "imgHistory":Landroid/widget/ImageView;
    .restart local v32    # "layoutHeader":Landroid/widget/RelativeLayout;
    .restart local v36    # "strlocal_time":Ljava/lang/String;
    .restart local v37    # "strredeem_date":Ljava/lang/String;
    .restart local v38    # "strserver_time":Ljava/lang/String;
    .restart local v39    # "tvCampaign":Landroid/widget/TextView;
    .restart local v40    # "tvClose":Landroid/widget/TextView;
    .restart local v41    # "tvHistory":Landroid/widget/TextView;
    .restart local v42    # "tvPrivilegeMessage":Landroid/widget/TextView;
    :cond_2a3
    const-string v4, "GIFT_CAT_DESSERTS"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c8

    .line 1675
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f090034

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    .line 1676
    const v4, 0x7f02008f

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1da

    .line 1677
    :cond_2c8
    const-string v4, "GIFT_CAT_BEAUTY"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ed

    .line 1678
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f090035

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    .line 1679
    const v4, 0x7f020090

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1da

    .line 1680
    :cond_2ed
    const-string v4, "GIFT_CAT_MUSIC"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_312

    .line 1681
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f090036

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    .line 1682
    const v4, 0x7f020091

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1da

    .line 1684
    :cond_312
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f090037

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    .line 1685
    const v4, 0x7f020092

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1da

    .line 1707
    .restart local v5    # "img_campaign":Ljava/lang/String;
    .restart local v34    # "strRedeemDate":Ljava/lang/String;
    :cond_327
    const-string v4, "0"

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_276

    .line 1711
    const v4, 0x7f0a01a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1712
    .local v18, "strRemain":Ljava/lang/String;
    const v4, 0x7f0a01a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1715
    .local v17, "strExpire":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    :try_start_35f
    move-object/from16 v0, p9

    move-object/from16 v1, p8

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v31

    .line 1719
    .local v31, "intent":Landroid/content/Intent;
    new-instance v33, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;

    const/16 v4, 0x1f4

    const/4 v8, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v4, v8}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_377
    .catch Ljava/lang/Exception; {:try_start_35f .. :try_end_377} :catch_3c7

    .line 1722
    .local v33, "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :try_start_377
    invoke-virtual/range {v33 .. v33}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    .line 1723
    .local v24, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_382
    .catch Lcom/google/zxing/WriterException; {:try_start_377 .. :try_end_382} :catch_3ad
    .catch Ljava/lang/Exception; {:try_start_377 .. :try_end_382} :catch_3c7

    .line 1733
    .end local v24    # "bitmap":Landroid/graphics/Bitmap;
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v33    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :goto_382
    const/16 v22, 0x0

    .line 1734
    .local v22, "IsNeverExpire":Z
    if-eqz p2, :cond_38c

    .line 1735
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/Purchasing;->NeverExpire:Z

    move/from16 v22, v0

    .line 1737
    :cond_38c
    if-nez p13, :cond_390

    .line 1738
    const/16 v22, 0x1

    .line 1741
    :cond_390
    if-nez v22, :cond_276

    .line 1742
    new-instance v7, Lcom/samsung/privilege/util/DialogUtil$15;

    move-object/from16 v8, p0

    move-wide/from16 v9, p11

    move/from16 v11, p13

    move-object/from16 v12, p2

    move-wide/from16 v13, p17

    move-wide/from16 v15, p15

    invoke-direct/range {v7 .. v21}, Lcom/samsung/privilege/util/DialogUtil$15;-><init>(Landroid/app/Activity;JILcom/samsung/privilege/bean/Purchasing;JJLjava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 1813
    .local v7, "runnable":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_276

    .line 1724
    .end local v7    # "runnable":Ljava/lang/Runnable;
    .end local v22    # "IsNeverExpire":Z
    .restart local v31    # "intent":Landroid/content/Intent;
    .restart local v33    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_3ad
    move-exception v27

    .line 1725
    .local v27, "e":Lcom/google/zxing/WriterException;
    :try_start_3ae
    const-string v4, "ZXING"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(WriterException):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c6
    .catch Ljava/lang/Exception; {:try_start_3ae .. :try_end_3c6} :catch_3c7

    goto :goto_382

    .line 1727
    .end local v27    # "e":Lcom/google/zxing/WriterException;
    .end local v31    # "intent":Landroid/content/Intent;
    .end local v33    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_3c7
    move-exception v27

    .line 1728
    .local v27, "e":Ljava/lang/Exception;
    const-string v4, "ZXING"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(Exception):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_382
.end method
