.class public Lcom/bzbs/lib/survey/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static gIsFinish:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/bzbs/lib/survey/util/DialogUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/lib/survey/util/DialogUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;
    .registers 6
    .param p0, "barcode_type"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "imgBarcode"    # Landroid/widget/ImageView;

    .prologue
    .line 994
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 995
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AZTEC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 997
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    :goto_24
    const-string/jumbo v1, "ENCODE_TYPE"

    const-string/jumbo v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    const-string/jumbo v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    return-object v0

    .line 998
    :cond_34
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODABAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 999
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 1001
    :cond_53
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1002
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 1004
    :cond_72
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1005
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 1007
    :cond_91
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 1008
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 1010
    :cond_b1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DATA_MATRIX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 1011
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1012
    :cond_cc
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 1013
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1014
    :cond_e7
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 1015
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1016
    :cond_102
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ITF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 1017
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1018
    :cond_11d
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MAXICODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 1019
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1020
    :cond_138
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PDF_417"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 1021
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1022
    :cond_153
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "QR_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    .line 1023
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 1025
    :cond_173
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 1026
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1027
    :cond_18e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_EXPANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 1028
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1029
    :cond_1a9
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 1030
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1031
    :cond_1c4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1df

    .line 1032
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1033
    :cond_1df
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_EAN_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 1034
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 1036
    :cond_1fa
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24
.end method

.method public static loadImageAnimate(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/16 v3, 0x64

    .line 964
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 965
    .local v0, "animDraw":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 966
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 967
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 968
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 969
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 970
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 971
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 972
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 973
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 974
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 975
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock11:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 976
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 977
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock13:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 978
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock14:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 979
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock15:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 980
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/bzbs/lib/survey/R$drawable;->clock16:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 981
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 983
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 985
    new-instance v1, Lcom/bzbs/lib/survey/util/DialogUtil$6;

    invoke-direct {v1, v0}, Lcom/bzbs/lib/survey/util/DialogUtil$6;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 991
    return-void
.end method

.method private static onShowBarcode(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V
    .registers 10
    .param p0, "btnSwithToBarcode"    # Landroid/widget/LinearLayout;
    .param p1, "btnSwithToSerial"    # Landroid/widget/LinearLayout;
    .param p2, "btnSwithToQRCode"    # Landroid/widget/LinearLayout;
    .param p3, "contentQRCode"    # Landroid/widget/LinearLayout;
    .param p4, "contentBarcode"    # Landroid/widget/LinearLayout;
    .param p5, "tvSerial"    # Landroid/widget/TextView;
    .param p6, "animation2"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 524
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 533
    invoke-virtual {p4, p6}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 534
    invoke-virtual {p4, p6}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 535
    return-void
.end method

.method private static onShowCode(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V
    .registers 10
    .param p0, "btnSwithToBarcode"    # Landroid/widget/LinearLayout;
    .param p1, "btnSwithToSerial"    # Landroid/widget/LinearLayout;
    .param p2, "btnSwithToQRCode"    # Landroid/widget/LinearLayout;
    .param p3, "contentQRCode"    # Landroid/widget/LinearLayout;
    .param p4, "contentBarcode"    # Landroid/widget/LinearLayout;
    .param p5, "tvSerial"    # Landroid/widget/TextView;
    .param p6, "animation2"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 509
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    invoke-virtual {p5}, Landroid/widget/TextView;->clearAnimation()V

    .line 518
    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 519
    invoke-virtual {p5, p6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 520
    return-void
.end method

.method private static onShowQRCode(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V
    .registers 10
    .param p0, "btnSwithToBarcode"    # Landroid/widget/LinearLayout;
    .param p1, "btnSwithToSerial"    # Landroid/widget/LinearLayout;
    .param p2, "btnSwithToQRCode"    # Landroid/widget/LinearLayout;
    .param p3, "contentQRCode"    # Landroid/widget/LinearLayout;
    .param p4, "contentBarcode"    # Landroid/widget/LinearLayout;
    .param p5, "tvSerial"    # Landroid/widget/TextView;
    .param p6, "animation2"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 539
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 544
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 545
    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 548
    invoke-virtual {p3, p6}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 549
    invoke-virtual {p3, p6}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 550
    return-void
.end method

.method public static showDialogSerial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V
    .registers 42
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "pStrID"    # Ljava/lang/String;
    .param p2, "pStrAgencyName"    # Ljava/lang/String;
    .param p3, "pStrName"    # Ljava/lang/String;
    .param p4, "pLngExpireIn"    # J
    .param p6, "pStrSerial"    # Ljava/lang/String;
    .param p7, "pStrPrivilegeMessage"    # Ljava/lang/String;
    .param p8, "server_time"    # J
    .param p10, "local_time"    # J

    .prologue
    .line 1047
    sget-object v3, Lcom/bzbs/lib/survey/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDialogSerial|pStrSerial |"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pStrPrivilegeMessage |"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/lib/survey/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 1050
    .local v24, "strserver_time":Ljava/lang/String;
    const-string/jumbo v3, "DialogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "server_time("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/lib/survey/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 1053
    .local v23, "strlocal_time":Ljava/lang/String;
    const-string/jumbo v3, "DialogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "local_time("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p10

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    new-instance v17, Landroid/app/Dialog;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1059
    .local v17, "dialogSerial":Landroid/app/Dialog;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1060
    sget v3, Lcom/bzbs/lib/survey/R$layout;->bz_dialog_new_serial_number:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1061
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1064
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x3

    if-eq v3, v4, :cond_eb

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28d

    .line 1065
    :cond_eb
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v29

    .line 1066
    .local v29, "window":Landroid/view/Window;
    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 1080
    :goto_11c
    sget v3, Lcom/bzbs/lib/survey/R$id;->imgCampaign:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 1081
    .local v19, "imgCampaign":Landroid/widget/ImageView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvCampaignDesc:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1082
    .local v25, "tvCampaignDesc":Landroid/widget/TextView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvSerial1:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1083
    .local v26, "tvSerial1":Landroid/widget/TextView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvSerial4:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1084
    .local v10, "tvSerial4":Landroid/widget/TextView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvSerial6:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 1085
    .local v27, "tvSerial6":Landroid/widget/TextView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvSerial7:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1086
    .local v13, "tvSerial7":Landroid/widget/TextView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->btnClose:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 1087
    .local v15, "btnClose":Landroid/widget/Button;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvShowTimeRedeem:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 1088
    .local v28, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMM yyyy HH:mm"

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v21, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 1090
    .local v16, "currentDateandTime":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/bzbs/lib/survey/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    :try_start_1a8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "fonts/kit55p.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v18

    .line 1095
    .local v18, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1096
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1097
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1098
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1099
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1100
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1d9} :catch_364

    .line 1107
    .end local v18    # "font":Landroid/graphics/Typeface;
    :goto_1d9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/picture/modifydate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1108
    .local v20, "img_url":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1109
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    if-eqz p7, :cond_338

    const-string/jumbo v3, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_338

    .line 1114
    const/4 v3, 0x4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    move-object/from16 v22, p7

    .line 1118
    .local v22, "str_privilege_message":Ljava/lang/String;
    const-string/jumbo v3, "<serial>"

    move-object/from16 v0, v22

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1119
    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    .end local v22    # "str_privilege_message":Ljava/lang/String;
    :cond_241
    :goto_241
    sget v3, Lcom/bzbs/lib/survey/R$string;->dialog_new_serial_show_time:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1129
    .local v12, "strRemain":Ljava/lang/String;
    sget v3, Lcom/bzbs/lib/survey/R$string;->purchasing_this_serial_is_expired:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1130
    .local v11, "strExpire":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_359

    .line 1134
    new-instance v2, Lcom/bzbs/lib/survey/util/DialogUtil$7;

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    move-wide/from16 v6, p4

    move-wide/from16 v8, p10

    invoke-direct/range {v2 .. v13}, Lcom/bzbs/lib/survey/util/DialogUtil$7;-><init>(Landroid/app/Activity;JJJLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 1202
    .local v2, "runnable":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1211
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_26c
    :goto_26c
    new-instance v3, Lcom/bzbs/lib/survey/util/DialogUtil$8;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/bzbs/lib/survey/util/DialogUtil$8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v15, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 1222
    .local v14, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1223
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1225
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->show()V

    .line 1226
    return-void

    .line 1067
    .end local v10    # "tvSerial4":Landroid/widget/TextView;
    .end local v11    # "strExpire":Ljava/lang/String;
    .end local v12    # "strRemain":Ljava/lang/String;
    .end local v13    # "tvSerial7":Landroid/widget/TextView;
    .end local v14    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "btnClose":Landroid/widget/Button;
    .end local v16    # "currentDateandTime":Ljava/lang/String;
    .end local v19    # "imgCampaign":Landroid/widget/ImageView;
    .end local v20    # "img_url":Ljava/lang/String;
    .end local v21    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v25    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v26    # "tvSerial1":Landroid/widget/TextView;
    .end local v27    # "tvSerial6":Landroid/widget/TextView;
    .end local v28    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v29    # "window":Landroid/view/Window;
    :cond_28d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2cf

    .line 1068
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v29

    .line 1069
    .restart local v29    # "window":Landroid/view/Window;
    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_11c

    .line 1070
    .end local v29    # "window":Landroid/view/Window;
    :cond_2cf
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x1

    if-ne v3, v4, :cond_305

    .line 1071
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v29

    .line 1072
    .restart local v29    # "window":Landroid/view/Window;
    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_11c

    .line 1074
    .end local v29    # "window":Landroid/view/Window;
    :cond_305
    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v29

    .line 1075
    .restart local v29    # "window":Landroid/view/Window;
    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual/range {v29 .. v29}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fe6666666666666L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_11c

    .line 1120
    .restart local v10    # "tvSerial4":Landroid/widget/TextView;
    .restart local v13    # "tvSerial7":Landroid/widget/TextView;
    .restart local v15    # "btnClose":Landroid/widget/Button;
    .restart local v16    # "currentDateandTime":Ljava/lang/String;
    .restart local v19    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v20    # "img_url":Ljava/lang/String;
    .restart local v21    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v25    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v26    # "tvSerial1":Landroid/widget/TextView;
    .restart local v27    # "tvSerial6":Landroid/widget/TextView;
    .restart local v28    # "tvShowTimeRedeem":Landroid/widget/TextView;
    :cond_338
    if-eqz p6, :cond_241

    const-string/jumbo v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_241

    .line 1121
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1124
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_241

    .line 1205
    .restart local v11    # "strExpire":Ljava/lang/String;
    .restart local v12    # "strRemain":Ljava/lang/String;
    :cond_359
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-gez v3, :cond_26c

    .line 1206
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_26c

    .line 1101
    .end local v11    # "strExpire":Ljava/lang/String;
    .end local v12    # "strRemain":Ljava/lang/String;
    .end local v20    # "img_url":Ljava/lang/String;
    :catch_364
    move-exception v3

    goto/16 :goto_1d9
.end method

.method public static showDialogSerial3TypeCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 71
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "pIntID"    # I
    .param p2, "pStrAgencyName"    # Ljava/lang/String;
    .param p3, "pStrName"    # Ljava/lang/String;
    .param p4, "plngExpireIn"    # J
    .param p6, "pStrSerial"    # Ljava/lang/String;
    .param p7, "pStrPrivilegeMessage"    # Ljava/lang/String;
    .param p8, "type"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_32b

    .line 561
    invoke-static/range {p0 .. p0}, Lcom/bzbs/lib/survey/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 563
    move-object/from16 v46, p7

    .line 579
    .local v46, "privilege_message_regen":Ljava/lang/String;
    new-instance v35, Landroid/app/Dialog;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 580
    .local v35, "dialogSerial":Landroid/app/Dialog;
    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 581
    sget v5, Lcom/bzbs/lib/survey/R$layout;->bz_dialog_serial_3_type_code:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 583
    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 586
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v7, 0x3

    if-eq v5, v7, :cond_45

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v7, 0x4

    if-ne v5, v7, :cond_32c

    .line 587
    :cond_45
    invoke-virtual/range {v35 .. v35}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v60

    .line 588
    .local v60, "window":Landroid/view/Window;
    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-double v10, v5

    const-wide v22, 0x3feccccccccccccdL

    mul-double v10, v10, v22

    double-to-int v5, v10

    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v10, v7

    const-wide v22, 0x3fe6666666666666L

    mul-double v10, v10, v22

    double-to-int v7, v10

    move-object/from16 v0, v60

    invoke-virtual {v0, v5, v7}, Landroid/view/Window;->setLayout(II)V

    .line 589
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    :goto_83
    sget v5, Lcom/bzbs/lib/survey/R$id;->imgCampaign:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 607
    .local v40, "imgCampaign":Landroid/widget/ImageView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvCampaignDesc:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/TextView;

    .line 608
    .local v51, "tvCampaignDesc":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvSerial1:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/TextView;

    .line 609
    .local v54, "tvSerial1":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvSerial4:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 610
    .local v12, "tvSerial4":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvSerial4_1:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/TextView;

    .line 611
    .local v55, "tvSerial4_1":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvSerial4_2:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    .line 612
    .local v56, "tvSerial4_2":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvSerial6:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    .line 617
    .local v57, "tvSerial6":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->imgBarcode:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/ImageView;

    .line 618
    .local v39, "imgBarcode":Landroid/widget/ImageView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvCodeSmall:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 619
    .local v52, "tvCodeSmall":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvSerialSmall:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/TextView;

    .line 620
    .local v58, "tvSerialSmall":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->contentBarcode:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 622
    .local v13, "contentBarcode":Landroid/widget/LinearLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->imgQRcode:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageView;

    .line 623
    .local v41, "imgQRcode":Landroid/widget/ImageView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvQRSmall:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    .line 624
    .local v53, "tvQRSmall":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->contentQRCode:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 627
    .local v14, "contentQRCode":Landroid/widget/LinearLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->btnSwithToBarcode:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 628
    .local v15, "btnSwithToBarcode":Landroid/widget/LinearLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->btnSwithToSerial:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 629
    .local v16, "btnSwithToSerial":Landroid/widget/LinearLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->btnSwithToQRCode:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 630
    .local v17, "btnSwithToQRCode":Landroid/widget/LinearLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvTitleTime:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 631
    .local v19, "tvTitleTime":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvTimeLeft:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 633
    .local v21, "tvSerial7":Landroid/widget/TextView;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layoutPrivilegeMessage:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/RelativeLayout;

    .line 634
    .local v45, "layoutPrivilegeMessage":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->layout3Code:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/RelativeLayout;

    .line 635
    .local v44, "layout3Code":Landroid/widget/RelativeLayout;
    sget v5, Lcom/bzbs/lib/survey/R$id;->webPrivilegeMessage:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 637
    .local v4, "webPrivilegeMessage":Landroid/webkit/WebView;
    sget v5, Lcom/bzbs/lib/survey/R$anim;->to_middle:I

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v26

    .line 638
    .local v26, "animation1":Landroid/view/animation/Animation;
    sget v5, Lcom/bzbs/lib/survey/R$anim;->from_middle:I

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v30

    .line 640
    .local v30, "animation2":Landroid/view/animation/Animation;
    sget v5, Lcom/bzbs/lib/survey/R$id;->btnClose:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/Button;

    .line 641
    .local v33, "btnClose":Landroid/widget/Button;
    sget v5, Lcom/bzbs/lib/survey/R$id;->tvShowTimeRedeem:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/TextView;

    .line 642
    .local v59, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v48, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "dd MMM yyyy HH:mm"

    move-object/from16 v0, v48

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 643
    .local v48, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v34

    .line 644
    .local v34, "currentDateandTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Lcom/bzbs/lib/survey/R$string;->campaign_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    sget v5, Lcom/bzbs/lib/survey/R$id;->imgProcess:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 649
    .local v18, "imgProgress":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/DialogUtil;->loadImageAnimate(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 652
    :try_start_1de
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string/jumbo v7, "fonts/kit55p.ttf"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v37

    .line 653
    .local v37, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v51

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 654
    move-object/from16 v0, v54

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 655
    move-object/from16 v0, v55

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 656
    move-object/from16 v0, v56

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 657
    move-object/from16 v0, v57

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 659
    move-object/from16 v0, v52

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 660
    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 661
    move-object/from16 v0, v53

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 662
    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 663
    move-object/from16 v0, v59

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_22f} :catch_5ac

    .line 671
    .end local v37    # "font":Landroid/graphics/Typeface;
    :goto_22f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "api/campaign/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/picture/modifydate="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 672
    .local v42, "img_url":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    sget v7, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 673
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    if-eqz v46, :cond_3fc

    const-string/jumbo v5, ""

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3fc

    .line 679
    const/4 v5, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 680
    const/16 v5, 0x8

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 681
    const/16 v5, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    const-string/jumbo v5, "&lt;"

    const-string/jumbo v7, "<"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "&gt;"

    const-string/jumbo v9, ">"

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 684
    .local v50, "str_privilege_message":Ljava/lang/String;
    const-string/jumbo v5, "<serial>"

    move-object/from16 v0, v50

    move-object/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 686
    const-string/jumbo v38, "<head><style>@font-face {font-family: \'verdana\';src: url(\'file:///android_asset/fonts/kit55p.ttf\');}body {font-family: \'verdana\';font-size:18pt;font-style:normal;}</style></head>"

    .line 687
    .local v38, "head":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<html>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "<body>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "</body></html>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 688
    .local v6, "htmlData":Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v7, "text/html"

    const-string/jumbo v8, "utf-8"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    .end local v6    # "htmlData":Ljava/lang/String;
    .end local v38    # "head":Ljava/lang/String;
    .end local v50    # "str_privilege_message":Ljava/lang/String;
    :goto_305
    new-instance v5, Lcom/bzbs/lib/survey/util/DialogUtil$5;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Lcom/bzbs/lib/survey/util/DialogUtil$5;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 956
    invoke-virtual/range {v35 .. v35}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v31

    .line 957
    .local v31, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x11

    move-object/from16 v0, v31

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 958
    invoke-virtual/range {v35 .. v35}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 960
    invoke-virtual/range {v35 .. v35}, Landroid/app/Dialog;->show()V

    .line 961
    .end local v4    # "webPrivilegeMessage":Landroid/webkit/WebView;
    .end local v12    # "tvSerial4":Landroid/widget/TextView;
    .end local v13    # "contentBarcode":Landroid/widget/LinearLayout;
    .end local v14    # "contentQRCode":Landroid/widget/LinearLayout;
    .end local v15    # "btnSwithToBarcode":Landroid/widget/LinearLayout;
    .end local v16    # "btnSwithToSerial":Landroid/widget/LinearLayout;
    .end local v17    # "btnSwithToQRCode":Landroid/widget/LinearLayout;
    .end local v18    # "imgProgress":Landroid/widget/ImageView;
    .end local v19    # "tvTitleTime":Landroid/widget/TextView;
    .end local v21    # "tvSerial7":Landroid/widget/TextView;
    .end local v26    # "animation1":Landroid/view/animation/Animation;
    .end local v30    # "animation2":Landroid/view/animation/Animation;
    .end local v31    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v33    # "btnClose":Landroid/widget/Button;
    .end local v34    # "currentDateandTime":Ljava/lang/String;
    .end local v35    # "dialogSerial":Landroid/app/Dialog;
    .end local v39    # "imgBarcode":Landroid/widget/ImageView;
    .end local v40    # "imgCampaign":Landroid/widget/ImageView;
    .end local v41    # "imgQRcode":Landroid/widget/ImageView;
    .end local v42    # "img_url":Ljava/lang/String;
    .end local v44    # "layout3Code":Landroid/widget/RelativeLayout;
    .end local v45    # "layoutPrivilegeMessage":Landroid/widget/RelativeLayout;
    .end local v46    # "privilege_message_regen":Ljava/lang/String;
    .end local v48    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v51    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v52    # "tvCodeSmall":Landroid/widget/TextView;
    .end local v53    # "tvQRSmall":Landroid/widget/TextView;
    .end local v54    # "tvSerial1":Landroid/widget/TextView;
    .end local v55    # "tvSerial4_1":Landroid/widget/TextView;
    .end local v56    # "tvSerial4_2":Landroid/widget/TextView;
    .end local v57    # "tvSerial6":Landroid/widget/TextView;
    .end local v58    # "tvSerialSmall":Landroid/widget/TextView;
    .end local v59    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v60    # "window":Landroid/view/Window;
    :cond_32b
    return-void

    .line 590
    .restart local v35    # "dialogSerial":Landroid/app/Dialog;
    .restart local v46    # "privilege_message_regen":Ljava/lang/String;
    :cond_32c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v7, 0x2

    if-ne v5, v7, :cond_37b

    .line 591
    invoke-virtual/range {v35 .. v35}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v60

    .line 592
    .restart local v60    # "window":Landroid/view/Window;
    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-double v10, v5

    const-wide v22, 0x3feccccccccccccdL

    mul-double v10, v10, v22

    double-to-int v5, v10

    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v10, v7

    const-wide v22, 0x3fe6666666666666L

    mul-double v10, v10, v22

    double-to-int v7, v10

    move-object/from16 v0, v60

    invoke-virtual {v0, v5, v7}, Landroid/view/Window;->setLayout(II)V

    .line 593
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_83

    .line 594
    .end local v60    # "window":Landroid/view/Window;
    :cond_37b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3bc

    .line 595
    invoke-virtual/range {v35 .. v35}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v60

    .line 596
    .restart local v60    # "window":Landroid/view/Window;
    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v5, v7}, Landroid/view/Window;->setLayout(II)V

    .line 597
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_83

    .line 599
    .end local v60    # "window":Landroid/view/Window;
    :cond_3bc
    invoke-virtual/range {v35 .. v35}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v60

    .line 600
    .restart local v60    # "window":Landroid/view/Window;
    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-double v10, v5

    const-wide v22, 0x3feccccccccccccdL

    mul-double v10, v10, v22

    double-to-int v5, v10

    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-double v10, v7

    const-wide v22, 0x3fe6666666666666L

    mul-double v10, v10, v22

    double-to-int v7, v10

    move-object/from16 v0, v60

    invoke-virtual {v0, v5, v7}, Landroid/view/Window;->setLayout(II)V

    .line 601
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_83

    .line 690
    .restart local v4    # "webPrivilegeMessage":Landroid/webkit/WebView;
    .restart local v12    # "tvSerial4":Landroid/widget/TextView;
    .restart local v13    # "contentBarcode":Landroid/widget/LinearLayout;
    .restart local v14    # "contentQRCode":Landroid/widget/LinearLayout;
    .restart local v15    # "btnSwithToBarcode":Landroid/widget/LinearLayout;
    .restart local v16    # "btnSwithToSerial":Landroid/widget/LinearLayout;
    .restart local v17    # "btnSwithToQRCode":Landroid/widget/LinearLayout;
    .restart local v18    # "imgProgress":Landroid/widget/ImageView;
    .restart local v19    # "tvTitleTime":Landroid/widget/TextView;
    .restart local v21    # "tvSerial7":Landroid/widget/TextView;
    .restart local v26    # "animation1":Landroid/view/animation/Animation;
    .restart local v30    # "animation2":Landroid/view/animation/Animation;
    .restart local v33    # "btnClose":Landroid/widget/Button;
    .restart local v34    # "currentDateandTime":Ljava/lang/String;
    .restart local v39    # "imgBarcode":Landroid/widget/ImageView;
    .restart local v40    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v41    # "imgQRcode":Landroid/widget/ImageView;
    .restart local v42    # "img_url":Ljava/lang/String;
    .restart local v44    # "layout3Code":Landroid/widget/RelativeLayout;
    .restart local v45    # "layoutPrivilegeMessage":Landroid/widget/RelativeLayout;
    .restart local v48    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v51    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v52    # "tvCodeSmall":Landroid/widget/TextView;
    .restart local v53    # "tvQRSmall":Landroid/widget/TextView;
    .restart local v54    # "tvSerial1":Landroid/widget/TextView;
    .restart local v55    # "tvSerial4_1":Landroid/widget/TextView;
    .restart local v56    # "tvSerial4_2":Landroid/widget/TextView;
    .restart local v57    # "tvSerial6":Landroid/widget/TextView;
    .restart local v58    # "tvSerialSmall":Landroid/widget/TextView;
    .restart local v59    # "tvShowTimeRedeem":Landroid/widget/TextView;
    :cond_3fc
    if-eqz p6, :cond_429

    const-string/jumbo v5, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_429

    .line 691
    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    move-object/from16 v0, v55

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    move-object/from16 v0, v56

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    :cond_429
    :try_start_429
    const-string/jumbo v5, "CODE_128"

    move-object/from16 v0, p6

    move-object/from16 v1, v39

    invoke-static {v5, v0, v1}, Lcom/bzbs/lib/survey/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v43

    .line 702
    .local v43, "intent":Landroid/content/Intent;
    new-instance v47, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;

    const/16 v5, 0x1f4

    const/4 v7, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2, v5, v7}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_442
    .catch Ljava/lang/Exception; {:try_start_429 .. :try_end_442} :catch_501

    .line 705
    .local v47, "qrcode":Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;
    :try_start_442
    invoke-virtual/range {v47 .. v47}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v32

    .line 706
    .local v32, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_44d
    .catch Lcom/google/zxing/WriterException; {:try_start_442 .. :try_end_44d} :catch_4e0
    .catch Ljava/lang/Exception; {:try_start_442 .. :try_end_44d} :catch_501

    .line 715
    .end local v32    # "bitmap":Landroid/graphics/Bitmap;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v47    # "qrcode":Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;
    :goto_44d
    :try_start_44d
    const-string/jumbo v5, "QR_CODE"

    move-object/from16 v0, p6

    move-object/from16 v1, v41

    invoke-static {v5, v0, v1}, Lcom/bzbs/lib/survey/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v43

    .line 716
    .restart local v43    # "intent":Landroid/content/Intent;
    new-instance v47, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;

    const/16 v5, 0x1f4

    const/4 v7, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2, v5, v7}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_466
    .catch Ljava/lang/Exception; {:try_start_44d .. :try_end_466} :catch_543

    .line 719
    .restart local v47    # "qrcode":Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;
    :try_start_466
    invoke-virtual/range {v47 .. v47}, Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v32

    .line 720
    .restart local v32    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_471
    .catch Lcom/google/zxing/WriterException; {:try_start_466 .. :try_end_471} :catch_522
    .catch Ljava/lang/Exception; {:try_start_466 .. :try_end_471} :catch_543

    .line 728
    .end local v32    # "bitmap":Landroid/graphics/Bitmap;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v47    # "qrcode":Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;
    :goto_471
    sget v5, Lcom/bzbs/lib/survey/R$string;->dialog_new_serial_show_time:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 729
    .local v49, "strRemain":Ljava/lang/String;
    sget v5, Lcom/bzbs/lib/survey/R$string;->purchasing_this_serial_is_expired:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 730
    .local v20, "strExpire":Ljava/lang/String;
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-lez v5, :cond_564

    .line 731
    new-instance v8, Lcom/bzbs/lib/survey/util/DialogUtil$1;

    move-object/from16 v9, p0

    move-wide/from16 v10, p4

    invoke-direct/range {v8 .. v21}, Lcom/bzbs/lib/survey/util/DialogUtil$1;-><init>(Landroid/app/Activity;JLandroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 806
    .local v8, "runnable":Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 822
    .end local v8    # "runnable":Ljava/lang/Runnable;
    :goto_498
    new-instance v22, Lcom/bzbs/lib/survey/util/DialogUtil$2;

    move-object/from16 v23, v15

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    move-object/from16 v27, v12

    move-object/from16 v28, v14

    move-object/from16 v29, v13

    invoke-direct/range {v22 .. v30}, Lcom/bzbs/lib/survey/util/DialogUtil$2;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    new-instance v22, Lcom/bzbs/lib/survey/util/DialogUtil$3;

    move-object/from16 v23, v15

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    move-object/from16 v27, v12

    move-object/from16 v28, v14

    move-object/from16 v29, v13

    invoke-direct/range {v22 .. v30}, Lcom/bzbs/lib/survey/util/DialogUtil$3;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    new-instance v22, Lcom/bzbs/lib/survey/util/DialogUtil$4;

    move-object/from16 v23, v15

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    move-object/from16 v27, v14

    move-object/from16 v28, v13

    move-object/from16 v29, v12

    invoke-direct/range {v22 .. v30}, Lcom/bzbs/lib/survey/util/DialogUtil$4;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_305

    .line 707
    .end local v20    # "strExpire":Ljava/lang/String;
    .end local v49    # "strRemain":Ljava/lang/String;
    .restart local v43    # "intent":Landroid/content/Intent;
    .restart local v47    # "qrcode":Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;
    :catch_4e0
    move-exception v36

    .line 708
    .local v36, "e":Lcom/google/zxing/WriterException;
    :try_start_4e1
    const-string/jumbo v5, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(WriterException):"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v36 .. v36}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4ff
    .catch Ljava/lang/Exception; {:try_start_4e1 .. :try_end_4ff} :catch_501

    goto/16 :goto_44d

    .line 710
    .end local v36    # "e":Lcom/google/zxing/WriterException;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v47    # "qrcode":Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;
    :catch_501
    move-exception v36

    .line 711
    .local v36, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(Exception):"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_44d

    .line 721
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v43    # "intent":Landroid/content/Intent;
    .restart local v47    # "qrcode":Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;
    :catch_522
    move-exception v36

    .line 722
    .local v36, "e":Lcom/google/zxing/WriterException;
    :try_start_523
    const-string/jumbo v5, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(WriterException):"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v36 .. v36}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_541
    .catch Ljava/lang/Exception; {:try_start_523 .. :try_end_541} :catch_543

    goto/16 :goto_471

    .line 724
    .end local v36    # "e":Lcom/google/zxing/WriterException;
    .end local v43    # "intent":Landroid/content/Intent;
    .end local v47    # "qrcode":Lcom/bzbs/lib/survey/util/zxing/QRCodeEncoder;
    :catch_543
    move-exception v36

    .line 725
    .local v36, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ZXING"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(Exception):"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_471

    .line 808
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v20    # "strExpire":Ljava/lang/String;
    .restart local v49    # "strRemain":Ljava/lang/String;
    :cond_564
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-gez v5, :cond_59d

    .line 809
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    const/16 v5, 0x8

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 811
    const/16 v5, 0x8

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 812
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 813
    const/16 v5, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 814
    const/16 v5, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 815
    const/16 v5, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 816
    const/16 v5, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_498

    .line 818
    :cond_59d
    sget v5, Lcom/bzbs/lib/survey/R$id;->contentTime:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_498

    .line 664
    .end local v20    # "strExpire":Ljava/lang/String;
    .end local v42    # "img_url":Ljava/lang/String;
    .end local v49    # "strRemain":Ljava/lang/String;
    :catch_5ac
    move-exception v5

    goto/16 :goto_22f
.end method

.method public static showDialogSerialGift(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V
    .registers 42
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "pStrID"    # Ljava/lang/String;
    .param p2, "pStrAgencyName"    # Ljava/lang/String;
    .param p3, "pStrName"    # Ljava/lang/String;
    .param p4, "pLngExpireIn"    # J
    .param p6, "pStrSerial"    # Ljava/lang/String;
    .param p7, "pStrPrivilegeMessage"    # Ljava/lang/String;
    .param p8, "server_time"    # J
    .param p10, "local_time"    # J

    .prologue
    .line 1230
    sget-object v3, Lcom/bzbs/lib/survey/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDialogSerialGift|pStrSerial |"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pStrPrivilegeMessage |"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/lib/survey/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 1233
    .local v25, "strserver_time":Ljava/lang/String;
    const-string/jumbo v3, "DialogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "server_time("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/lib/survey/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 1236
    .local v24, "strlocal_time":Ljava/lang/String;
    const-string/jumbo v3, "DialogUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "local_time("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p10

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    new-instance v16, Landroid/app/Dialog;

    const v3, 0x1030010

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1240
    .local v16, "dialogSerial":Landroid/app/Dialog;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1241
    sget v3, Lcom/bzbs/lib/survey/R$layout;->bz_dialog_new_serial_gift:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1242
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1245
    sget v3, Lcom/bzbs/lib/survey/R$id;->layoutHeader:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 1246
    .local v22, "layoutHeader":Landroid/widget/RelativeLayout;
    sget v3, Lcom/bzbs/lib/survey/R$id;->imgCampaign:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1247
    .local v18, "imgCampaign":Landroid/widget/ImageView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvCampaign:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1248
    .local v26, "tvCampaign":Landroid/widget/TextView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvSerial:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1249
    .local v10, "tvSerial":Landroid/widget/TextView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvPrivilegeMessage:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 1250
    .local v29, "tvPrivilegeMessage":Landroid/widget/TextView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvDateTime:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1251
    .local v13, "tvDateTime":Landroid/widget/TextView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->imgClose:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 1252
    .local v19, "imgClose":Landroid/widget/ImageView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->imgHistory:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 1253
    .local v20, "imgHistory":Landroid/widget/ImageView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvClose:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 1254
    .local v27, "tvClose":Landroid/widget/TextView;
    sget v3, Lcom/bzbs/lib/survey/R$id;->tvHistory:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 1257
    .local v28, "tvHistory":Landroid/widget/TextView;
    :try_start_134
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "fonts/kit55p.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v17

    .line 1258
    .local v17, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1259
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1260
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1261
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1262
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_160} :catch_274

    .line 1267
    .end local v17    # "font":Landroid/graphics/Typeface;
    :goto_160
    const/4 v3, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1268
    const/4 v3, 0x4

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1269
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$color;->cat_all:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 1272
    .local v15, "color":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$color;->cat_all:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 1273
    sget v3, Lcom/bzbs/lib/survey/R$drawable;->bz_back_info_6:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1275
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/picture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1279
    .local v21, "img_campaign":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    sget v4, Lcom/bzbs/lib/survey/R$drawable;->t1_1:I

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableTypeRequest;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1282
    const-string/jumbo v3, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_217

    .line 1283
    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1284
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1286
    move-object/from16 v23, p7

    .line 1287
    .local v23, "str_privilege_message":Ljava/lang/String;
    const-string/jumbo v3, "<serial>"

    move-object/from16 v0, v23

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1288
    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    .end local v23    # "str_privilege_message":Ljava/lang/String;
    :cond_217
    sget v3, Lcom/bzbs/lib/survey/R$string;->campaign_redeem_error_remain:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1297
    .local v12, "strRemain":Ljava/lang/String;
    sget v3, Lcom/bzbs/lib/survey/R$string;->campaign_redeem_error_expire:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1299
    .local v11, "strExpire":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_265

    .line 1300
    new-instance v2, Lcom/bzbs/lib/survey/util/DialogUtil$9;

    move-object/from16 v3, p0

    move-wide/from16 v4, p8

    move-wide/from16 v6, p4

    move-wide/from16 v8, p10

    invoke-direct/range {v2 .. v13}, Lcom/bzbs/lib/survey/util/DialogUtil$9;-><init>(Landroid/app/Activity;JJJLandroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 1369
    .local v2, "runnable":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1376
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :goto_242
    new-instance v3, Lcom/bzbs/lib/survey/util/DialogUtil$10;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lcom/bzbs/lib/survey/util/DialogUtil$10;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1384
    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 1385
    .local v14, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1386
    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1388
    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V

    .line 1389
    return-void

    .line 1370
    .end local v14    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    :cond_265
    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-nez v3, :cond_270

    .line 1371
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_242

    .line 1373
    :cond_270
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_242

    .line 1263
    .end local v11    # "strExpire":Ljava/lang/String;
    .end local v12    # "strRemain":Ljava/lang/String;
    .end local v15    # "color":I
    .end local v21    # "img_campaign":Ljava/lang/String;
    :catch_274
    move-exception v3

    goto/16 :goto_160
.end method
