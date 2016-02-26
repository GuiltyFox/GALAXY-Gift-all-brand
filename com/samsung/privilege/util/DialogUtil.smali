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

    .line 1211
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

.method public static genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;
    .registers 6
    .param p0, "barcode_type"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "imgBarcode"    # Landroid/widget/ImageView;

    .prologue
    .line 2086
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2087
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2088
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AZTEC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2089
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2130
    :goto_21
    const-string v1, "ENCODE_TYPE"

    const-string v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2131
    const-string v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2132
    return-object v0

    .line 2090
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODABAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2091
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2092
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 2093
    :cond_4b
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODE_39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2094
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2095
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 2096
    :cond_68
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODE_93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 2097
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2098
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 2099
    :cond_85
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODE_128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 2100
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2101
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 2102
    :cond_a2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DATA_MATRIX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 2103
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2104
    :cond_bb
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EAN_8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 2105
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2106
    :cond_d4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EAN_13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 2107
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2108
    :cond_ed
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ITF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 2109
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2110
    :cond_106
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAXICODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 2111
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2112
    :cond_11f
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PDF_417"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 2113
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2114
    :cond_138
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 2115
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2116
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_21

    .line 2117
    :cond_156
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSS_14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 2118
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2119
    :cond_16f
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSS_EXPANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_188

    .line 2120
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2121
    :cond_188
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPC_A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 2122
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2123
    :cond_1a1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPC_E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 2124
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2125
    :cond_1ba
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPC_EAN_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 2126
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 2128
    :cond_1d3
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21
.end method

.method public static genPrivilegeMessageOfFrontend(Ljava/lang/String;Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;)Ljava/lang/String;
    .registers 8
    .param p0, "privilege_message"    # Ljava/lang/String;
    .param p1, "activityContext"    # Landroid/app/Activity;
    .param p2, "purchasing"    # Lcom/samsung/privilege/bean/Purchasing;

    .prologue
    .line 958
    move-object v1, p0

    .line 960
    .local v1, "privilege_message_regen":Ljava/lang/String;
    if-eqz p2, :cond_5a

    .line 961
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->AgencyID:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_296

    .line 962
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 963
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Delivered:Z

    if-eqz v2, :cond_97

    .line 966
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsShipped:Z

    if-eqz v2, :cond_75

    .line 971
    const v2, 0x7f090160

    :try_start_24
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 972
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    if-eqz v2, :cond_5a

    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090170

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

    .line 1208
    :cond_5a
    :goto_5a
    return-object v1

    .line 975
    :catch_5b
    move-exception v0

    .line 976
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

    .line 983
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_75
    const v2, 0x7f09015e

    :try_start_78
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7d

    move-result-object v1

    goto :goto_5a

    .line 984
    :catch_7d
    move-exception v0

    .line 985
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

    .line 989
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_97
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsSpecificPrintVoucher:Z

    if-eqz v2, :cond_bd

    .line 996
    const v2, 0x7f090163

    :try_start_9e
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_a3

    move-result-object v1

    goto :goto_5a

    .line 997
    :catch_a3
    move-exception v0

    .line 998
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

    .line 1005
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_bd
    iget v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ExpireIn:I

    if-ltz v2, :cond_5a

    .line 1012
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    if-nez v2, :cond_5a

    .line 1021
    const v2, 0x7f090165

    :try_start_c8
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cd

    move-result-object v1

    goto :goto_5a

    .line 1022
    :catch_cd
    move-exception v0

    .line 1023
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

    .line 1034
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

    .line 1035
    :cond_fc
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsShipped:Z

    if-eqz v2, :cond_156

    .line 1042
    const v2, 0x7f090160

    :try_start_103
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1043
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    if-eqz v2, :cond_5a

    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090170

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

    .line 1046
    :catch_13b
    move-exception v0

    .line 1047
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

    .line 1054
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_156
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Delivered:Z

    if-eqz v2, :cond_1ae

    .line 1056
    invoke-static {p1}, Lcom/samsung/privilege/UserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18a

    .line 1062
    const v2, 0x7f09015e

    :try_start_169
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_16c} :catch_16f

    move-result-object v1

    goto/16 :goto_5a

    .line 1063
    :catch_16f
    move-exception v0

    .line 1064
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

    .line 1073
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_18a
    const v2, 0x7f090167

    :try_start_18d
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_190} :catch_193

    move-result-object v1

    goto/16 :goto_5a

    .line 1074
    :catch_193
    move-exception v0

    .line 1075
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

    .line 1080
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1ae
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsSpecificPrintVoucher:Z

    if-eqz v2, :cond_1d6

    .line 1087
    const v2, 0x7f090163

    :try_start_1b5
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1b8} :catch_1bb

    move-result-object v1

    goto/16 :goto_5a

    .line 1088
    :catch_1bb
    move-exception v0

    .line 1089
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

    .line 1093
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d6
    iget v2, p2, Lcom/samsung/privilege/bean/Purchasing;->ExpireIn:I

    if-ltz v2, :cond_5a

    .line 1100
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    if-nez v2, :cond_5a

    .line 1109
    const v2, 0x7f090165

    :try_start_1e1
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e4} :catch_1e7

    move-result-object v1

    goto/16 :goto_5a

    .line 1110
    :catch_1e7
    move-exception v0

    .line 1111
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

    .line 1123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_202
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1126
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->HasWinner:Z

    if-eqz v2, :cond_272

    .line 1127
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsWinner:Z

    if-eqz v2, :cond_24e

    .line 1133
    const v2, 0x7f09016a

    :try_start_217
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_21a} :catch_234

    move-result-object v1

    .line 1138
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

    .line 1139
    goto/16 :goto_5a

    .line 1134
    :catch_234
    move-exception v0

    .line 1135
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

    .line 1144
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24e
    const v2, 0x7f090169

    :try_start_251
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_254} :catch_257

    move-result-object v1

    goto/16 :goto_5a

    .line 1145
    :catch_257
    move-exception v0

    .line 1146
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

    .line 1156
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_272
    const v2, 0x7f090168

    :try_start_275
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_278} :catch_27b

    move-result-object v1

    goto/16 :goto_5a

    .line 1157
    :catch_27b
    move-exception v0

    .line 1158
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

    .line 1164
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_296
    iget-object v2, p2, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1167
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->HasWinner:Z

    if-eqz v2, :cond_5a

    .line 1168
    iget-boolean v2, p2, Lcom/samsung/privilege/bean/Purchasing;->IsWinner:Z

    if-eqz v2, :cond_2e2

    .line 1174
    const v2, 0x7f09016a

    :try_start_2ab
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2ae} :catch_2c8

    move-result-object v1

    .line 1179
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

    .line 1180
    goto/16 :goto_5a

    .line 1175
    :catch_2c8
    move-exception v0

    .line 1176
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

    .line 1185
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2e2
    const v2, 0x7f090169

    :try_start_2e5
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_2e8} :catch_2eb

    move-result-object v1

    goto/16 :goto_5a

    .line 1186
    :catch_2eb
    move-exception v0

    .line 1187
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

    .line 928
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 929
    .local v0, "animDraw":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020264

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 930
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 931
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 932
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 933
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 934
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 935
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 936
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020272

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 937
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020273

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 938
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020265

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 939
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 940
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020267

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 941
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020268

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 942
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 943
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 944
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02026b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 945
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 947
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 949
    new-instance v1, Lcom/samsung/privilege/util/DialogUtil$15;

    invoke-direct {v1, v0}, Lcom/samsung/privilege/util/DialogUtil$15;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 955
    return-void
.end method

.method public static showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 14
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "is_auto_login_fb"    # Z

    .prologue
    .line 342
    move-object v9, p0

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_b6

    .line 343
    new-instance v1, Landroid/app/Dialog;

    const v9, 0x1030010

    invoke-direct {v1, p0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 345
    .local v1, "dialogConfirm":Landroid/app/Dialog;
    const v9, 0x7f0300de

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 347
    const v9, 0x7f470002

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 348
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v9, 0x7f470004

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 349
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v9, 0x7f470005

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 350
    .local v4, "imgOk":Landroid/widget/ImageView;
    const v9, 0x7f470006

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 351
    .local v8, "tvOk":Landroid/widget/TextView;
    const v9, 0x7f470007

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 352
    .local v3, "imgNo":Landroid/widget/ImageView;
    const v9, 0x7f470008

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 354
    .local v7, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 355
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 356
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 357
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 358
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 360
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 361
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 362
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 363
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 365
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    if-eqz p2, :cond_90

    .line 368
    const v9, 0x7f09033d

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_90
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$7;

    invoke-direct {v9, v1, v4, p0, p2}, Lcom/samsung/privilege/util/DialogUtil$7;-><init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$8;

    invoke-direct {v9, v1}, Lcom/samsung/privilege/util/DialogUtil$8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 391
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 392
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 394
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 396
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
    .line 1906
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1a6

    .line 1907
    new-instance v13, Landroid/app/Dialog;

    const v3, 0x1030010

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1909
    .local v13, "dialogSerial":Landroid/app/Dialog;
    const v3, 0x7f0300da

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1911
    const/high16 v3, 0x7f1f0000

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 1912
    .local v19, "layoutHeader":Landroid/widget/RelativeLayout;
    const v3, 0x7f1f0001

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 1913
    .local v16, "imgCampaign":Landroid/widget/ImageView;
    const v3, 0x7f1f0002

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1914
    .local v21, "tvCampaign":Landroid/widget/TextView;
    const v3, 0x7f1f000c

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 1915
    .local v2, "webPrivilegeMessage":Landroid/webkit/WebView;
    const v3, 0x7f1f000a

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 1916
    .local v17, "imgClose":Landroid/widget/ImageView;
    const v3, 0x7f1f000d

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1917
    .local v18, "imgContinue":Landroid/widget/ImageView;
    const v3, 0x7f1f000b

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1918
    .local v22, "tvClose":Landroid/widget/TextView;
    const v3, 0x7f1f000e

    invoke-virtual {v13, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1920
    .local v23, "tvContinue":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    .line 1921
    .local v14, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1922
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1923
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1925
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1926
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1927
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1929
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1931
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1932
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

    .line 1933
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1934
    const v3, 0x7f020090

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1949
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

    .line 1950
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

    .line 1951
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

    .line 1952
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

    .line 1953
    .local v4, "htmlData":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
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

    .line 1956
    .local v6, "img_campaign":Ljava/lang/String;
    const/4 v8, 0x0

    const v9, 0x7f0203a7

    const/4 v10, 0x0

    move-object/from16 v5, p3

    move-object/from16 v7, v16

    invoke-virtual/range {v5 .. v10}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1958
    new-instance v3, Lcom/samsung/privilege/util/DialogUtil$18;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v3, v13, v0, v1}, Lcom/samsung/privilege/util/DialogUtil$18;-><init>(Landroid/app/Dialog;Lcom/samsung/privilege/bean/CampaignView;Landroid/app/Activity;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2070
    new-instance v3, Lcom/samsung/privilege/util/DialogUtil$19;

    invoke-direct {v3, v13}, Lcom/samsung/privilege/util/DialogUtil$19;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2077
    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 2078
    .local v11, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2079
    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2081
    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    .line 2083
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

    .line 1935
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

    .line 1936
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1937
    const v3, 0x7f020091

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_cc

    .line 1938
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

    .line 1939
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080035

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1940
    const v3, 0x7f020092

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_cc

    .line 1941
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

    .line 1942
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080036

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1943
    const v3, 0x7f020093

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_cc

    .line 1945
    :cond_21c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f080037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1946
    const v3, 0x7f020094

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_cc
.end method

.method public static showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 400
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 401
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 403
    .local v1, "dialogError":Landroid/app/Dialog;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 405
    .local v2, "font":Landroid/graphics/Typeface;
    const v4, 0x7f0300db

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 406
    const-string v4, "Information"

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 408
    const v4, 0x7f1e0002

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 409
    .local v3, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 410
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 411
    const v4, 0x7f1e0003

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 413
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    new-instance v4, Lcom/samsung/privilege/util/DialogUtil$9;

    invoke-direct {v4, v1}, Lcom/samsung/privilege/util/DialogUtil$9;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 424
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

.method public static showDialogMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 96
    move-object v7, p0

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_8a

    .line 97
    new-instance v1, Landroid/app/Dialog;

    const v7, 0x1030010

    invoke-direct {v1, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 98
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 100
    const v7, 0x7f0300e0

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 102
    const v7, 0x7f480002

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 103
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v7, 0x7f480004

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 104
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v7, 0x7f480005

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 105
    .local v3, "imgClose":Landroid/widget/ImageView;
    const v7, 0x7f480006

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    .local v4, "tvClose":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 108
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 113
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v7, Lcom/samsung/privilege/util/DialogUtil$2;

    invoke-direct {v7, v1, p2, p0}, Lcom/samsung/privilege/util/DialogUtil$2;-><init>(Landroid/app/Dialog;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 129
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 130
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 134
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogSerial":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgClose":Landroid/widget/ImageView;
    .end local v4    # "tvClose":Landroid/widget/TextView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    :cond_8a
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
    .line 2137
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_192

    .line 2139
    new-instance v11, Landroid/app/Dialog;

    const v3, 0x1030010

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2141
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const v3, 0x7f0300e2

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2143
    const/high16 v3, 0x7f4a0000

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 2144
    .local v15, "layoutHeader":Landroid/widget/RelativeLayout;
    const v3, 0x7f4a0001

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2145
    .local v5, "imgCampaign":Landroid/widget/ImageView;
    const v3, 0x7f4a0002

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2146
    .local v18, "tvCampaign":Landroid/widget/TextView;
    const v3, 0x7f4a0005

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 2147
    .local v22, "tvSerial":Landroid/widget/TextView;
    const v3, 0x7f4a0006

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 2148
    .local v20, "tvPrivilegeMessage":Landroid/widget/TextView;
    const v3, 0x7f4a0007

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 2149
    .local v23, "tvStatus":Landroid/widget/TextView;
    const v3, 0x7f4a000a

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 2150
    .local v13, "imgClose":Landroid/widget/ImageView;
    const v3, 0x7f4a0008

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 2151
    .local v14, "imgReTry":Landroid/widget/ImageView;
    const v3, 0x7f4a000b

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 2152
    .local v19, "tvClose":Landroid/widget/TextView;
    const v3, 0x7f4a0009

    invoke-virtual {v11, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2154
    .local v21, "tvReTry":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 2155
    .local v12, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2156
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2157
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2158
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2159
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2161
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2162
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2163
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2164
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2165
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2167
    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2168
    const/4 v3, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2170
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2171
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

    .line 2173
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080037

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2174
    .local v10, "color":I
    const-string v3, "GIFT_CAT_RESTAURANT"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 2175
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080033

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2176
    const v3, 0x7f020090

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2190
    :goto_11a
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2193
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

    .line 2194
    .local v4, "img_campaign":Ljava/lang/String;
    const/4 v6, 0x0

    const v7, 0x7f0203a7

    const/4 v8, 0x0

    move-object/from16 v3, p10

    invoke-virtual/range {v3 .. v8}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2196
    new-instance v16, Lcom/samsung/privilege/util/DialogUtil$20;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/util/DialogUtil$20;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    .line 2230
    .local v16, "runnable":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2232
    new-instance v3, Lcom/samsung/privilege/util/DialogUtil$21;

    invoke-direct {v3, v11}, Lcom/samsung/privilege/util/DialogUtil$21;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2240
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 2241
    .local v9, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2242
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2244
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 2249
    new-instance v17, Lcom/samsung/privilege/util/DialogUtil$22;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/util/DialogUtil$22;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    .line 2274
    .local v17, "runnable2":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2277
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

    .line 2177
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

    .line 2178
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080034

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2179
    const v3, 0x7f020091

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_11a

    .line 2180
    :cond_1b6
    const-string v3, "GIFT_CAT_BEAUTY"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d9

    .line 2181
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080035

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2182
    const v3, 0x7f020092

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_11a

    .line 2183
    :cond_1d9
    const-string v3, "GIFT_CAT_MUSIC"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 2184
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080036

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2185
    const v3, 0x7f020093

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_11a

    .line 2187
    :cond_1fc
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080037

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 2188
    const v3, 0x7f020094

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_11a
.end method

.method public static showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 137
    move-object v9, p0

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_aa

    .line 138
    new-instance v1, Landroid/app/Dialog;

    const v9, 0x1030010

    invoke-direct {v1, p0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 140
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v9, 0x7f0300e4

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 142
    const v9, 0x7f4b0002

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 143
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v9, 0x7f4b0004

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 144
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v9, 0x7f4b0005

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 145
    .local v4, "imgOk":Landroid/widget/ImageView;
    const v9, 0x7f4b0006

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 146
    .local v8, "tvOk":Landroid/widget/TextView;
    const v9, 0x7f4b0007

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 147
    .local v3, "imgNo":Landroid/widget/ImageView;
    const v9, 0x7f4b0008

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 149
    .local v7, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 150
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 151
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 153
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 157
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 160
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$3;

    invoke-direct {v9, v1, v4, p0}, Lcom/samsung/privilege/util/DialogUtil$3;-><init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$4;

    invoke-direct {v9, v1}, Lcom/samsung/privilege/util/DialogUtil$4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 182
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 183
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 185
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 187
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
    .line 190
    move-object v9, p0

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_c5

    .line 191
    new-instance v1, Landroid/app/Dialog;

    const v9, 0x1030010

    invoke-direct {v1, p0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 193
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v9, 0x7f0300e4

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 195
    const v9, 0x7f4b0002

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 196
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v9, 0x7f4b0004

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 197
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v9, 0x7f4b0005

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 198
    .local v4, "imgOk":Landroid/widget/ImageView;
    const v9, 0x7f4b0006

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 199
    .local v8, "tvOk":Landroid/widget/TextView;
    const v9, 0x7f4b0007

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 200
    .local v3, "imgNo":Landroid/widget/ImageView;
    const v9, 0x7f4b0008

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 202
    .local v7, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 203
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 204
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 205
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 206
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 209
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 210
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 211
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 213
    const v9, 0x7f090332

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const v9, 0x7f090335

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const v9, 0x7f090337

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$5;

    invoke-direct {v9, v1, p0}, Lcom/samsung/privilege/util/DialogUtil$5;-><init>(Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    new-instance v9, Lcom/samsung/privilege/util/DialogUtil$6;

    invoke-direct {v9, v1, p0}, Lcom/samsung/privilege/util/DialogUtil$6;-><init>(Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 238
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 239
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 241
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 243
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

.method public static showDialogSerial3TypeCodeXXX(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
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
    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 925
    :goto_6
    return-void

    .line 434
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 436
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogUtil;->genPrivilegeMessageOfFrontend(Ljava/lang/String;Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;)Ljava/lang/String;

    move-result-object v47

    .line 441
    .local v47, "privilege_message_regen":Ljava/lang/String;
    new-instance v37, Landroid/app/Dialog;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 442
    .local v37, "dialogSerial":Landroid/app/Dialog;
    const/4 v4, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 443
    const v4, 0x7f0300e6

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 451
    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 454
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

    if-ne v4, v7, :cond_42b

    .line 455
    :cond_4f
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v62

    .line 456
    .local v62, "window":Landroid/view/Window;
    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v12, v4

    const-wide v24, 0x3feccccccccccccdL

    mul-double v12, v12, v24

    double-to-int v4, v12

    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v12, v7

    const-wide v24, 0x3fe6666666666666L

    mul-double v12, v12, v24

    double-to-int v7, v12

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v7}, Landroid/view/Window;->setLayout(II)V

    .line 457
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    :goto_8d
    const v4, 0x7f0c00a5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 475
    .local v6, "imgCampaign":Landroid/widget/ImageView;
    const v4, 0x7f0c00a6

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    .line 476
    .local v53, "tvCampaignDesc":Landroid/widget/TextView;
    const v4, 0x7f0c032c

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/TextView;

    .line 477
    .local v55, "tvExtraData":Landroid/widget/TextView;
    const v4, 0x7f0c0329

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 478
    .local v15, "tvSerialNumber":Landroid/widget/TextView;
    const v4, 0x7f0c032a

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    .line 479
    .local v57, "tvSerialBarcode":Landroid/widget/TextView;
    const v4, 0x7f0c032b

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/TextView;

    .line 483
    .local v58, "tvSerialQRcode":Landroid/widget/TextView;
    const v4, 0x7f0c00d2

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageView;

    .line 484
    .local v41, "imgBarcode":Landroid/widget/ImageView;
    const v4, 0x7f0c00d9

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/TextView;

    .line 485
    .local v54, "tvCodeSmall":Landroid/widget/TextView;
    const v4, 0x7f0c00dc

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/TextView;

    .line 486
    .local v59, "tvSerialSmall":Landroid/widget/TextView;
    const v4, 0x7f0c00d1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 488
    .local v16, "contentBarcode":Landroid/widget/LinearLayout;
    const v4, 0x7f0c00d5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/ImageView;

    .line 489
    .local v42, "imgQRcode":Landroid/widget/ImageView;
    const v4, 0x7f0c00df

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    .line 490
    .local v56, "tvQRSmall":Landroid/widget/TextView;
    const v4, 0x7f0c00d4

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 493
    .local v17, "contentQRCode":Landroid/widget/LinearLayout;
    const v4, 0x7f0c00d7

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 494
    .local v18, "btnSwithToBarcode":Landroid/widget/LinearLayout;
    const v4, 0x7f0c00da

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 495
    .local v19, "btnSwithToSerial":Landroid/widget/LinearLayout;
    const v4, 0x7f0c00dd

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 496
    .local v20, "btnSwithToQRCode":Landroid/widget/LinearLayout;
    const v4, 0x7f0c00e1

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 497
    .local v22, "tvTitleTime":Landroid/widget/TextView;
    const v4, 0x7f0c00e3

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 499
    .local v23, "tvTimeLeft":Landroid/widget/TextView;
    const v4, 0x7f0c00cd

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/RelativeLayout;

    .line 500
    .local v45, "layoutPrivilegeMessage":Landroid/widget/RelativeLayout;
    const v4, 0x7f0c00ce

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/RelativeLayout;

    .line 501
    .local v44, "layout3Code":Landroid/widget/RelativeLayout;
    const v4, 0x7f0c0068

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/webkit/WebView;

    .line 503
    .local v61, "webPrivilegeMessage":Landroid/webkit/WebView;
    const v4, 0x7f04002e

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v28

    .line 504
    .local v28, "animation1":Landroid/view/animation/Animation;
    const v4, 0x7f040008

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v32

    .line 506
    .local v32, "animation2":Landroid/view/animation/Animation;
    const v4, 0x7f0c00af

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/Button;

    .line 507
    .local v36, "btnClose":Landroid/widget/Button;
    const v4, 0x7f0c00a7

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v60

    check-cast v60, Landroid/widget/TextView;

    .line 508
    .local v60, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v49, Ljava/text/SimpleDateFormat;

    const-string v4, "dd MMM yyyy HH:mm"

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 509
    .local v49, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v50

    .line 513
    .local v50, "strRedeemDate":Ljava/lang/String;
    if-eqz p1, :cond_1d2

    .line 514
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/privilege/bean/Purchasing;->RedeemDate:J

    const-wide/16 v24, 0x6270

    sub-long v12, v12, v24

    const-wide/16 v24, 0x3e8

    mul-long v12, v12, v24

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v50

    .line 516
    :cond_1d2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v7, 0x7f090260

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

    .line 520
    const v4, 0x7f0c00e2

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 521
    .local v21, "imgProgress":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->loadImageAnimate(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 524
    :try_start_213
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v39

    .line 525
    .local v39, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v53

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 526
    move-object/from16 v0, v55

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 527
    move-object/from16 v0, v57

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 528
    move-object/from16 v0, v58

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 529
    move-object/from16 v0, v54

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 530
    move-object/from16 v0, v59

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 531
    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 532
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 533
    move-object/from16 v0, v60

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 534
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 536
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 537
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 538
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 539
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 540
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 541
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 542
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 543
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 544
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 545
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextSize(F)V
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_2bf} :catch_798

    .line 552
    .end local v39    # "font":Landroid/graphics/Typeface;
    :goto_2bf
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

    .line 553
    .local v5, "img_url":Ljava/lang/String;
    const/4 v7, 0x0

    const v8, 0x7f0203a7

    const/4 v9, 0x0

    move-object/from16 v4, p12

    invoke-virtual/range {v4 .. v9}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 554
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

    .line 562
    const-string v46, ""

    .line 563
    .local v46, "message_extra_data":Ljava/lang/String;
    if-eqz v47, :cond_35a

    const-string v4, ""

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35a

    .line 564
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "<barcode>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32c

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "&lt;barcode&gt;"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_509

    .line 565
    :cond_32c
    move-object/from16 v46, v47

    .line 566
    const-string v4, "<barcode>"

    const-string v7, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 567
    const-string v4, "&lt;barcode&gt;"

    const-string v7, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 568
    const-string v4, "<serial>"

    move-object/from16 v0, v46

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 569
    const-string v4, "&lt;serial&gt;"

    move-object/from16 v0, v46

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 570
    const-string v47, ""

    .line 571
    const-string p10, "CODE_128"

    .line 591
    :cond_35a
    :goto_35a
    if-eqz v47, :cond_599

    const-string v4, ""

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_599

    .line 592
    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 593
    const/16 v4, 0x8

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 594
    const/16 v4, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    const-string v4, "&lt;"

    const-string v7, "<"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "&gt;"

    const-string v8, ">"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 597
    .local v52, "str_privilege_message":Ljava/lang/String;
    const-string v4, "<serial>"

    move-object/from16 v0, v52

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 599
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

    .line 600
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

    .line 601
    .local v9, "htmlData":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v10, "text/html"

    const-string v11, "utf-8"

    const/4 v12, 0x0

    move-object/from16 v7, v61

    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .end local v9    # "htmlData":Ljava/lang/String;
    .end local v40    # "head":Ljava/lang/String;
    .end local v52    # "str_privilege_message":Ljava/lang/String;
    :goto_3dd
    new-instance v4, Lcom/samsung/privilege/util/DialogUtil$14;

    move-object/from16 v0, p15

    move-object/from16 v1, p0

    move-object/from16 v2, p14

    move-object/from16 v3, v37

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogUtil$14;-><init>(Lcom/samsung/privilege/bean/NFCTag;Landroid/app/Activity;Landroid/os/Handler;Landroid/app/Dialog;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v34

    .line 913
    .local v34, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    move-object/from16 v0, v34

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 914
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 917
    const/16 v33, 0x64

    .line 918
    .local v33, "TARGET_BRIGHTNESS":I
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/ScreenUtil;->getBrightnessMode(Landroid/app/Activity;)I

    move-result v4

    if-nez v4, :cond_41d

    .line 919
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/ScreenUtil;->getBrightnessLevel(Landroid/app/Activity;)I

    move-result v4

    sput v4, Lic/buzzebeeslib/util/ScreenUtil;->DEFAULT_MANUAL:I

    .line 920
    const/16 v4, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1, v4}, Lic/buzzebeeslib/util/ScreenUtil;->setBrightness(Landroid/app/Activity;II)V

    .line 922
    :cond_41d
    const/16 v4, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-static {v0, v1, v4}, Lic/buzzebeeslib/util/ScreenUtil;->setBrightness(Landroid/app/Activity;II)V

    .line 924
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->show()V

    goto/16 :goto_6

    .line 458
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
    :cond_42b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v7, 0x2

    if-ne v4, v7, :cond_47a

    .line 459
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v62

    .line 460
    .restart local v62    # "window":Landroid/view/Window;
    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v12, v4

    const-wide v24, 0x3feccccccccccccdL

    mul-double v12, v12, v24

    double-to-int v4, v12

    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v12, v7

    const-wide v24, 0x3fe6666666666666L

    mul-double v12, v12, v24

    double-to-int v7, v12

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v7}, Landroid/view/Window;->setLayout(II)V

    .line 461
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8d

    .line 462
    .end local v62    # "window":Landroid/view/Window;
    :cond_47a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4c9

    .line 463
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v62

    .line 464
    .restart local v62    # "window":Landroid/view/Window;
    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v12, v4

    const-wide v24, 0x3feccccccccccccdL

    mul-double v12, v12, v24

    double-to-int v4, v12

    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v12, v7

    const-wide v24, 0x3feccccccccccccdL

    mul-double v12, v12, v24

    double-to-int v7, v12

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v7}, Landroid/view/Window;->setLayout(II)V

    .line 465
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8d

    .line 467
    .end local v62    # "window":Landroid/view/Window;
    :cond_4c9
    invoke-virtual/range {v37 .. v37}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v62

    .line 468
    .restart local v62    # "window":Landroid/view/Window;
    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v12, v4

    const-wide v24, 0x3feccccccccccccdL

    mul-double v12, v12, v24

    double-to-int v4, v12

    invoke-virtual/range {v62 .. v62}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v12, v7

    const-wide v24, 0x3fe6666666666666L

    mul-double v12, v12, v24

    double-to-int v7, v12

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v7}, Landroid/view/Window;->setLayout(II)V

    .line 469
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8d

    .line 572
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
    :cond_509
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "<qrcode>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_521

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "&lt;qrcode&gt;"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_551

    .line 573
    :cond_521
    move-object/from16 v46, v47

    .line 574
    const-string v4, "<qrcode>"

    const-string v7, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 575
    const-string v4, "&lt;qrcode&gt;"

    const-string v7, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 576
    const-string v4, "<serial>"

    move-object/from16 v0, v46

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 577
    const-string v4, "&lt;serial&gt;"

    move-object/from16 v0, v46

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 578
    const-string v47, ""

    .line 579
    const-string p10, "QR_CODE"

    .line 580
    goto/16 :goto_35a

    :cond_551
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "<code>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_569

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "&lt;code&gt;"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35a

    .line 581
    :cond_569
    move-object/from16 v46, v47

    .line 582
    const-string v4, "<code>"

    const-string v7, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 583
    const-string v4, "&lt;code&gt;"

    const-string v7, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 584
    const-string v4, "<serial>"

    move-object/from16 v0, v46

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 585
    const-string v4, "&lt;serial&gt;"

    move-object/from16 v0, v46

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 586
    const-string v47, ""

    .line 587
    const-string p10, ""

    goto/16 :goto_35a

    .line 603
    :cond_599
    const/16 v4, 0x8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 604
    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 606
    if-eqz p9, :cond_5cb

    const-string v4, ""

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5cb

    .line 607
    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    move-object/from16 v0, p9

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    move-object/from16 v0, v57

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    move-object/from16 v0, v58

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    :cond_5cb
    if-eqz v46, :cond_5e6

    const-string v4, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e6

    .line 614
    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    invoke-static/range {v46 .. v46}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_5e6
    :try_start_5e6
    const-string v4, "CODE_128"

    move-object/from16 v0, p9

    move-object/from16 v1, v41

    invoke-static {v4, v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v43

    .line 620
    .local v43, "intent":Landroid/content/Intent;
    new-instance v48, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;

    const/16 v4, 0x1f4

    const/4 v7, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_5fe
    .catch Ljava/lang/Exception; {:try_start_5e6 .. :try_end_5fe} :catch_6e0

    .line 622
    .local v48, "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :try_start_5fe
    invoke-virtual/range {v48 .. v48}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v35

    .line 623
    .local v35, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_609
    .catch Lcom/google/zxing/WriterException; {:try_start_5fe .. :try_end_609} :catch_6c5
    .catch Ljava/lang/Exception; {:try_start_5fe .. :try_end_609} :catch_6e0

    .line 632
    .end local v35    # "bitmap":Landroid/graphics/Bitmap;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :goto_609
    :try_start_609
    const-string v4, "QR_CODE"

    move-object/from16 v0, p9

    move-object/from16 v1, v42

    invoke-static {v4, v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v43

    .line 633
    .restart local v43    # "intent":Landroid/content/Intent;
    new-instance v48, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;

    const/16 v4, 0x1f4

    const/4 v7, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_621
    .catch Ljava/lang/Exception; {:try_start_609 .. :try_end_621} :catch_716

    .line 635
    .restart local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :try_start_621
    invoke-virtual/range {v48 .. v48}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v35

    .line 636
    .restart local v35    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_62c
    .catch Lcom/google/zxing/WriterException; {:try_start_621 .. :try_end_62c} :catch_6fb
    .catch Ljava/lang/Exception; {:try_start_621 .. :try_end_62c} :catch_716

    .line 644
    .end local v35    # "bitmap":Landroid/graphics/Bitmap;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :goto_62c
    const v4, 0x7f090182

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 645
    .local v51, "strRemain":Ljava/lang/String;
    const v4, 0x7f09016b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 646
    .local v14, "strExpire":Ljava/lang/String;
    const-wide/16 v12, 0x0

    cmp-long v4, p7, v12

    if-lez v4, :cond_731

    .line 647
    new-instance v10, Lcom/samsung/privilege/util/DialogUtil$10;

    move-object/from16 v11, p0

    move-wide/from16 v12, p7

    invoke-direct/range {v10 .. v23}, Lcom/samsung/privilege/util/DialogUtil$10;-><init>(Landroid/app/Activity;JLjava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 722
    .local v10, "runnable":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 738
    .end local v10    # "runnable":Ljava/lang/Runnable;
    :goto_655
    if-eqz p10, :cond_67b

    const-string v4, ""

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67b

    .line 739
    const-string v4, "CODE_128"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77c

    .line 740
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    const/4 v4, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 742
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    :cond_67b
    :goto_67b
    new-instance v24, Lcom/samsung/privilege/util/DialogUtil$11;

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v27, v20

    move-object/from16 v29, v15

    move-object/from16 v30, v17

    move-object/from16 v31, v16

    invoke-direct/range {v24 .. v32}, Lcom/samsung/privilege/util/DialogUtil$11;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    new-instance v24, Lcom/samsung/privilege/util/DialogUtil$12;

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v27, v20

    move-object/from16 v29, v16

    move-object/from16 v30, v17

    move-object/from16 v31, v15

    invoke-direct/range {v24 .. v32}, Lcom/samsung/privilege/util/DialogUtil$12;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    new-instance v24, Lcom/samsung/privilege/util/DialogUtil$13;

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v27, v20

    move-object/from16 v29, v16

    move-object/from16 v30, v15

    move-object/from16 v31, v17

    invoke-direct/range {v24 .. v32}, Lcom/samsung/privilege/util/DialogUtil$13;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3dd

    .line 624
    .end local v14    # "strExpire":Ljava/lang/String;
    .end local v51    # "strRemain":Ljava/lang/String;
    .restart local v43    # "intent":Landroid/content/Intent;
    .restart local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_6c5
    move-exception v38

    .line 625
    .local v38, "e":Lcom/google/zxing/WriterException;
    :try_start_6c6
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
    :try_end_6de
    .catch Ljava/lang/Exception; {:try_start_6c6 .. :try_end_6de} :catch_6e0

    goto/16 :goto_609

    .line 627
    .end local v38    # "e":Lcom/google/zxing/WriterException;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_6e0
    move-exception v38

    .line 628
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

    goto/16 :goto_609

    .line 637
    .end local v38    # "e":Ljava/lang/Exception;
    .restart local v43    # "intent":Landroid/content/Intent;
    .restart local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_6fb
    move-exception v38

    .line 638
    .local v38, "e":Lcom/google/zxing/WriterException;
    :try_start_6fc
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
    :try_end_714
    .catch Ljava/lang/Exception; {:try_start_6fc .. :try_end_714} :catch_716

    goto/16 :goto_62c

    .line 640
    .end local v38    # "e":Lcom/google/zxing/WriterException;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v48    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_716
    move-exception v38

    .line 641
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

    goto/16 :goto_62c

    .line 724
    .end local v38    # "e":Ljava/lang/Exception;
    .restart local v14    # "strExpire":Ljava/lang/String;
    .restart local v51    # "strRemain":Ljava/lang/String;
    :cond_731
    const-wide/16 v12, 0x0

    cmp-long v4, p7, v12

    if-gez v4, :cond_76c

    .line 725
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 727
    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 728
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 729
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 730
    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 731
    const/16 v4, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 732
    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_655

    .line 734
    :cond_76c
    const v4, 0x7f0c00e0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_655

    .line 743
    :cond_77c
    const-string v4, "QR_CODE"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67b

    .line 744
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 745
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 746
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_67b

    .line 546
    .end local v5    # "img_url":Ljava/lang/String;
    .end local v14    # "strExpire":Ljava/lang/String;
    .end local v46    # "message_extra_data":Ljava/lang/String;
    .end local v51    # "strRemain":Ljava/lang/String;
    :catch_798
    move-exception v4

    goto/16 :goto_2bf
.end method

.method private static showDialogSerialBarcode(Landroid/app/Activity;Landroid/os/Handler;Lcom/samsung/privilege/bean/Purchasing;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;Lcom/samsung/privilege/bean/NFCTag;)V
    .registers 66
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
    .line 1681
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2a2

    .line 1683
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v10, 0x3e8

    mul-long v10, v10, p15

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    .line 1684
    .local v39, "strserver_time":Ljava/lang/String;
    const-string v4, "DialogUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "server_time("

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p15

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v10, 0x3e8

    mul-long v10, v10, p17

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 1687
    .local v37, "strlocal_time":Ljava/lang/String;
    const-string v4, "DialogUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "local_time("

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p17

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v10, 0x3e8

    mul-long v10, v10, p11

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    .line 1690
    .local v38, "strredeem_date":Ljava/lang/String;
    const-string v4, "DialogUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "redeem_date("

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p11

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    new-instance v27, Landroid/app/Dialog;

    const v4, 0x1030010

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1694
    .local v27, "dialogSerial":Landroid/app/Dialog;
    const v4, 0x7f0300e7

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 1696
    const/high16 v4, 0x7f1f0000

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/RelativeLayout;

    .line 1697
    .local v33, "layoutHeader":Landroid/widget/RelativeLayout;
    const v4, 0x7f1f0001

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1698
    .local v6, "imgCampaign":Landroid/widget/ImageView;
    const v4, 0x7f1f0002

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 1699
    .local v40, "tvCampaign":Landroid/widget/TextView;
    const v4, 0x7f1f000f

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 1700
    .local v21, "imgBarcode":Landroid/widget/ImageView;
    const v4, 0x7f1f0005

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1701
    .local v20, "tvSerial":Landroid/widget/TextView;
    const v4, 0x7f1f0006

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 1702
    .local v43, "tvPrivilegeMessage":Landroid/widget/TextView;
    const v4, 0x7f1f0007

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1703
    .local v22, "tvDateTime":Landroid/widget/TextView;
    const v4, 0x7f1f000a

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    .line 1704
    .local v30, "imgClose":Landroid/widget/ImageView;
    const v4, 0x7f1f0008

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    .line 1705
    .local v31, "imgHistory":Landroid/widget/ImageView;
    const v4, 0x7f1f000b

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 1706
    .local v41, "tvClose":Landroid/widget/TextView;
    const v4, 0x7f1f0009

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 1708
    .local v42, "tvHistory":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v29

    .line 1709
    .local v29, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1710
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1711
    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1712
    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1713
    move-object/from16 v0, v43

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1715
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1716
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1717
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1718
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1719
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1721
    const/4 v4, 0x4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1722
    const/4 v4, 0x4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1724
    move-object/from16 v0, v40

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080037

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    .line 1727
    .local v26, "color":I
    const-string v4, "GIFT_CAT_RESTAURANT"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a3

    .line 1728
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080033

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    .line 1729
    const v4, 0x7f020090

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1743
    :goto_1da
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1745
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    const-wide/16 v10, 0x6270

    sub-long v10, p11, v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v35

    .line 1746
    .local v35, "strRedeemDate":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "| "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " |"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1749
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "api/campaign/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/picture"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1750
    .local v5, "img_campaign":Ljava/lang/String;
    const/4 v7, 0x0

    const v8, 0x7f0203a7

    const/4 v9, 0x0

    move-object/from16 v4, p19

    invoke-virtual/range {v4 .. v9}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1754
    const-string v4, ""

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_327

    .line 1755
    const/16 v4, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1756
    const/16 v4, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1757
    const/4 v4, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1758
    move-object/from16 v36, p10

    .line 1759
    .local v36, "str_privilege_message":Ljava/lang/String;
    const-string v4, "<serial>"

    move-object/from16 v0, v36

    move-object/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1760
    invoke-static/range {v36 .. v36}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1873
    .end local v36    # "str_privilege_message":Ljava/lang/String;
    :cond_276
    :goto_276
    new-instance v4, Lcom/samsung/privilege/util/DialogUtil$17;

    move-object/from16 v0, p20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v27

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogUtil$17;-><init>(Lcom/samsung/privilege/bean/NFCTag;Landroid/app/Activity;Landroid/os/Handler;Landroid/app/Dialog;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1896
    invoke-virtual/range {v27 .. v27}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    .line 1897
    .local v24, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    move-object/from16 v0, v24

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1898
    invoke-virtual/range {v27 .. v27}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1900
    invoke-virtual/range {v27 .. v27}, Landroid/app/Dialog;->show()V

    .line 1902
    .end local v5    # "img_campaign":Ljava/lang/String;
    .end local v6    # "imgCampaign":Landroid/widget/ImageView;
    .end local v20    # "tvSerial":Landroid/widget/TextView;
    .end local v21    # "imgBarcode":Landroid/widget/ImageView;
    .end local v22    # "tvDateTime":Landroid/widget/TextView;
    .end local v24    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v26    # "color":I
    .end local v27    # "dialogSerial":Landroid/app/Dialog;
    .end local v29    # "font":Landroid/graphics/Typeface;
    .end local v30    # "imgClose":Landroid/widget/ImageView;
    .end local v31    # "imgHistory":Landroid/widget/ImageView;
    .end local v33    # "layoutHeader":Landroid/widget/RelativeLayout;
    .end local v35    # "strRedeemDate":Ljava/lang/String;
    .end local v37    # "strlocal_time":Ljava/lang/String;
    .end local v38    # "strredeem_date":Ljava/lang/String;
    .end local v39    # "strserver_time":Ljava/lang/String;
    .end local v40    # "tvCampaign":Landroid/widget/TextView;
    .end local v41    # "tvClose":Landroid/widget/TextView;
    .end local v42    # "tvHistory":Landroid/widget/TextView;
    .end local v43    # "tvPrivilegeMessage":Landroid/widget/TextView;
    :cond_2a2
    return-void

    .line 1730
    .restart local v6    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v20    # "tvSerial":Landroid/widget/TextView;
    .restart local v21    # "imgBarcode":Landroid/widget/ImageView;
    .restart local v22    # "tvDateTime":Landroid/widget/TextView;
    .restart local v26    # "color":I
    .restart local v27    # "dialogSerial":Landroid/app/Dialog;
    .restart local v29    # "font":Landroid/graphics/Typeface;
    .restart local v30    # "imgClose":Landroid/widget/ImageView;
    .restart local v31    # "imgHistory":Landroid/widget/ImageView;
    .restart local v33    # "layoutHeader":Landroid/widget/RelativeLayout;
    .restart local v37    # "strlocal_time":Ljava/lang/String;
    .restart local v38    # "strredeem_date":Ljava/lang/String;
    .restart local v39    # "strserver_time":Ljava/lang/String;
    .restart local v40    # "tvCampaign":Landroid/widget/TextView;
    .restart local v41    # "tvClose":Landroid/widget/TextView;
    .restart local v42    # "tvHistory":Landroid/widget/TextView;
    .restart local v43    # "tvPrivilegeMessage":Landroid/widget/TextView;
    :cond_2a3
    const-string v4, "GIFT_CAT_DESSERTS"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c8

    .line 1731
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080034

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    .line 1732
    const v4, 0x7f020091

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1da

    .line 1733
    :cond_2c8
    const-string v4, "GIFT_CAT_BEAUTY"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ed

    .line 1734
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080035

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    .line 1735
    const v4, 0x7f020092

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1da

    .line 1736
    :cond_2ed
    const-string v4, "GIFT_CAT_MUSIC"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/privilege/util/SharedPreferencesUtil;->GetAdminConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p14

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_312

    .line 1737
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080036

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    .line 1738
    const v4, 0x7f020093

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1da

    .line 1740
    :cond_312
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080037

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v26

    .line 1741
    const v4, 0x7f020094

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1da

    .line 1763
    .restart local v5    # "img_campaign":Ljava/lang/String;
    .restart local v35    # "strRedeemDate":Ljava/lang/String;
    :cond_327
    const-string v4, "0"

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_276

    .line 1767
    const v4, 0x7f0901a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1768
    .local v19, "strRemain":Ljava/lang/String;
    const v4, 0x7f0901a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1771
    .local v18, "strExpire":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    :try_start_35f
    move-object/from16 v0, p9

    move-object/from16 v1, p8

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v32

    .line 1775
    .local v32, "intent":Landroid/content/Intent;
    new-instance v34, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;

    const/16 v4, 0x1f4

    const/4 v7, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_377
    .catch Ljava/lang/Exception; {:try_start_35f .. :try_end_377} :catch_3c7

    .line 1778
    .local v34, "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :try_start_377
    invoke-virtual/range {v34 .. v34}, Lcom/samsung/privilege/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v25

    .line 1779
    .local v25, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_382
    .catch Lcom/google/zxing/WriterException; {:try_start_377 .. :try_end_382} :catch_3ad
    .catch Ljava/lang/Exception; {:try_start_377 .. :try_end_382} :catch_3c7

    .line 1789
    .end local v25    # "bitmap":Landroid/graphics/Bitmap;
    .end local v32    # "intent":Landroid/content/Intent;
    .end local v34    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :goto_382
    const/16 v23, 0x0

    .line 1790
    .local v23, "IsNeverExpire":Z
    if-eqz p2, :cond_38c

    .line 1791
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/Purchasing;->NeverExpire:Z

    move/from16 v23, v0

    .line 1793
    :cond_38c
    if-nez p13, :cond_390

    .line 1794
    const/16 v23, 0x1

    .line 1797
    :cond_390
    if-nez v23, :cond_276

    .line 1798
    new-instance v8, Lcom/samsung/privilege/util/DialogUtil$16;

    move-object/from16 v9, p0

    move-wide/from16 v10, p11

    move/from16 v12, p13

    move-object/from16 v13, p2

    move-wide/from16 v14, p17

    move-wide/from16 v16, p15

    invoke-direct/range {v8 .. v22}, Lcom/samsung/privilege/util/DialogUtil$16;-><init>(Landroid/app/Activity;JILcom/samsung/privilege/bean/Purchasing;JJLjava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 1869
    .local v8, "runnable":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_276

    .line 1780
    .end local v8    # "runnable":Ljava/lang/Runnable;
    .end local v23    # "IsNeverExpire":Z
    .restart local v32    # "intent":Landroid/content/Intent;
    .restart local v34    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_3ad
    move-exception v28

    .line 1781
    .local v28, "e":Lcom/google/zxing/WriterException;
    :try_start_3ae
    const-string v4, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "(WriterException):"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c6
    .catch Ljava/lang/Exception; {:try_start_3ae .. :try_end_3c6} :catch_3c7

    goto :goto_382

    .line 1783
    .end local v28    # "e":Lcom/google/zxing/WriterException;
    .end local v32    # "intent":Landroid/content/Intent;
    .end local v34    # "qrcode":Lcom/samsung/privilege/util/zxing/QRCodeEncoder;
    :catch_3c7
    move-exception v28

    .line 1784
    .local v28, "e":Ljava/lang/Exception;
    const-string v4, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "(Exception):"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_382
.end method
