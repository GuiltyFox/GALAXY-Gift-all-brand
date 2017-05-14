.class public Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;
.super Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;
.source "ShowCodeBlurDialog.java"


# static fields
.field public static b:Z

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:J

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:J

.field private static j:J

.field private static k:Landroid/app/Activity;


# instance fields
.field a:Ljava/lang/String;

.field private l:I

.field private m:F

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;-><init>()V

    .line 58
    const-class v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->q:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;
    .registers 6

    .prologue
    .line 726
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 727
    const-string/jumbo v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AZTEC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 729
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->a:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    :goto_24
    const-string/jumbo v1, "ENCODE_TYPE"

    const-string/jumbo v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string/jumbo v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    return-object v0

    .line 730
    :cond_34
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODABAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 731
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->b:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 733
    :cond_53
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 734
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->c:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 736
    :cond_72
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 737
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->d:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 739
    :cond_91
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 740
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->e:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 742
    :cond_b1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DATA_MATRIX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 743
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->f:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 744
    :cond_cc
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 745
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->g:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 746
    :cond_e7
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 747
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->h:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 748
    :cond_102
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ITF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 749
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->i:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 750
    :cond_11d
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MAXICODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 751
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->j:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 752
    :cond_138
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PDF_417"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 753
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->k:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 754
    :cond_153
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "QR_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    .line 755
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 757
    :cond_173
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 758
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->m:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 759
    :cond_18e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_EXPANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 760
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->n:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 761
    :cond_1a9
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 762
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->o:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 763
    :cond_1c4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1df

    .line 764
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->p:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 765
    :cond_1df
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_EAN_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 766
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->q:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 768
    :cond_1fa
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->e:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;IFZZ)Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;
    .registers 21

    .prologue
    .line 87
    new-instance v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;

    invoke-direct {v1}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;-><init>()V

    .line 88
    sput-object p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    .line 89
    sput p1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->c:I

    .line 90
    sput-object p3, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->e:Ljava/lang/String;

    .line 91
    sput-object p2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->d:Ljava/lang/String;

    .line 92
    sput-wide p4, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->f:J

    .line 93
    sput-object p6, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    .line 94
    sput-object p7, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h:Ljava/lang/String;

    .line 95
    sput-wide p8, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->i:J

    .line 96
    sput-wide p10, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->j:J

    .line 98
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 99
    const-string/jumbo v3, "bundle_key_blur_radius"

    move/from16 v0, p13

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v3, "bundle_key_down_scale_factor"

    move/from16 v0, p14

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 101
    const-string/jumbo v3, "bundle_key_dimming_effect"

    move/from16 v0, p15

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const-string/jumbo v3, "bundle_key_debug_effect"

    move/from16 v0, p16

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const-string/jumbo v3, "bundle_key_data"

    move-object/from16 v0, p12

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->setArguments(Landroid/os/Bundle;)V

    .line 108
    return-object v1
.end method

.method public static a(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .registers 6

    .prologue
    const/16 v3, 0x64

    .line 693
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 694
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 695
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 696
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 697
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 698
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020235

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 699
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020236

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 700
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020237

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 701
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 702
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 703
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 704
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 705
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 706
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 707
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 708
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020230

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 709
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 710
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 712
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 714
    new-instance v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$6;

    invoke-direct {v1, v0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$6;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 723
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V
    .registers 11

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 647
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 648
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 649
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 651
    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 653
    invoke-virtual {p5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 655
    invoke-virtual {p6}, Landroid/widget/TextView;->clearAnimation()V

    .line 656
    invoke-virtual {p6, p7}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 657
    invoke-virtual {p6, p7}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 658
    return-void
.end method

.method static synthetic a(Landroid/view/View;)Z
    .registers 2

    invoke-static {p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/view/View;)V
    .registers 30

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialogSerial|pStrSerial |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pStrPrivilegeMessage |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMM yyyy HH:mm"

    sget-object v4, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-wide v4, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->i:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "server_time("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->i:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMM yyyy HH:mm"

    sget-object v4, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-wide v4, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->j:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "local_time("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->j:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const v2, 0x7f10065a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    .line 215
    const v2, 0x7f1002b2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    .line 216
    const v2, 0x7f1002b3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    .line 217
    const v2, 0x7f100662

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 218
    const v2, 0x7f1002ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 219
    const v2, 0x7f10065b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    .line 220
    const v2, 0x7f10065c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    .line 221
    const v2, 0x7f100661

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 223
    const v2, 0x7f100173

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageView;

    .line 224
    const v2, 0x7f100150

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 225
    const v2, 0x7f1002ed

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 226
    const v2, 0x7f100200

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 228
    const v2, 0x7f1002e7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/ImageView;

    .line 229
    const v2, 0x7f1002f0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 230
    const v2, 0x7f1002e6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 232
    const v2, 0x7f1002e4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 233
    const v2, 0x7f10065d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 234
    const v2, 0x7f10065e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    const v2, 0x7f1002e9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 238
    const v2, 0x7f1002eb

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 239
    const v2, 0x7f1002ee

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 241
    const v2, 0x7f10016d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 244
    const v2, 0x7f10065f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    .line 245
    const v2, 0x7f100660

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 247
    sget-object v5, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    const v6, 0x7f05004c

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v23

    .line 248
    sget-object v5, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    const v6, 0x7f050025

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 249
    const v5, 0x7f1002b4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 250
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "dd MMM yyyy HH:mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 251
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    const v24, 0x7f090148

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    sget-object v5, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 256
    const v5, 0x7f10016c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 257
    sget-object v5, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "api/campaign/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/picture/modifydate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    sget-object v6, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    const v6, 0x7f0202e1

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    const v6, 0x7f0202e1

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->b(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 265
    sget-object v3, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->d:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 271
    const-wide/32 v4, 0x500000

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 272
    sget-object v4, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 273
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 274
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 275
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 276
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k()Z

    move-result v4

    if-nez v4, :cond_2ac

    .line 279
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 281
    :cond_2ac
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 282
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$$Lambda$1;->a()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 283
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 284
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    .line 286
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 287
    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 288
    new-instance v4, Landroid/webkit/WebChromeClient;

    invoke-direct {v4}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 289
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 291
    sget-object v3, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h:Ljava/lang/String;

    if-eqz v3, :cond_42d

    sget-object v3, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42d

    .line 292
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 293
    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    sget-object v3, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h:Ljava/lang/String;

    .line 295
    const-string/jumbo v4, "<serial>"

    sget-object v5, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    const-string/jumbo v3, ""

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "UTF-8"

    const-string/jumbo v7, ""

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_309
    sget-object v3, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h:Ljava/lang/String;

    if-eqz v3, :cond_434

    sget-object v3, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_434

    .line 303
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 304
    const/16 v3, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    sget-object v3, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h:Ljava/lang/String;

    .line 306
    const-string/jumbo v4, "<serial>"

    sget-object v5, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 307
    const-string/jumbo v3, ""

    const-string/jumbo v5, "text/html"

    const-string/jumbo v6, "UTF-8"

    const-string/jumbo v7, ""

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_33d
    sget-object v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    if-eqz v2, :cond_35b

    sget-object v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35b

    .line 315
    sget-object v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    sget-object v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    sget-object v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_35b
    :try_start_35b
    const-string/jumbo v2, "CODE_128"

    sget-object v3, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v2

    .line 322
    new-instance v3, Lcom/bzbs/zxing/QRCodeEncoder;

    sget-object v4, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    const/16 v5, 0x1f4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_370
    .catch Ljava/lang/Exception; {:try_start_35b .. :try_end_370} :catch_45c

    .line 325
    :try_start_370
    invoke-virtual {v3}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 326
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_379
    .catch Lcom/google/zxing/WriterException; {:try_start_370 .. :try_end_379} :catch_43b
    .catch Ljava/lang/Exception; {:try_start_370 .. :try_end_379} :catch_45c

    .line 335
    :goto_379
    :try_start_379
    const-string/jumbo v2, "QR_CODE"

    sget-object v3, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->g:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v2

    .line 336
    new-instance v3, Lcom/bzbs/zxing/QRCodeEncoder;

    sget-object v4, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    const/16 v5, 0x1f4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_38e
    .catch Ljava/lang/Exception; {:try_start_379 .. :try_end_38e} :catch_49e

    .line 339
    :try_start_38e
    invoke-virtual {v3}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 340
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_397
    .catch Lcom/google/zxing/WriterException; {:try_start_38e .. :try_end_397} :catch_47d
    .catch Ljava/lang/Exception; {:try_start_38e .. :try_end_397} :catch_49e

    .line 350
    :goto_397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->q:Ljava/lang/String;

    if-nez v2, :cond_4bf

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v14

    move-object v7, v13

    .line 351
    invoke-direct/range {v2 .. v9}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    .line 370
    :goto_3a9
    sget-object v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    const v3, 0x7f090149

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 371
    sget-object v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    const v3, 0x7f09034b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 374
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 375
    packed-switch v2, :pswitch_data_622

    .line 399
    :goto_3c6
    sget-wide v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5dd

    .line 401
    new-instance v10, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;

    move-object/from16 v11, p0

    move-object v12, v8

    invoke-direct/range {v10 .. v20}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$2;-><init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 480
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 496
    :goto_3de
    new-instance v18, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;

    move-object/from16 v19, p0

    move-object/from16 v20, v15

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v24, v8

    move-object/from16 v25, v14

    move-object/from16 v26, v13

    move-object/from16 v27, v9

    invoke-direct/range {v18 .. v27}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$3;-><init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    new-instance v18, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;

    move-object/from16 v19, p0

    move-object/from16 v20, v15

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v24, v8

    move-object/from16 v25, v14

    move-object/from16 v26, v13

    move-object/from16 v27, v9

    invoke-direct/range {v18 .. v27}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$4;-><init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    new-instance v18, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;

    move-object/from16 v19, p0

    move-object/from16 v20, v15

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v24, v14

    move-object/from16 v25, v13

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    invoke-direct/range {v18 .. v27}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$5;-><init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    return-void

    .line 298
    :cond_42d
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_309

    .line 309
    :cond_434
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_33d

    .line 327
    :catch_43b
    move-exception v2

    .line 328
    :try_start_43c
    const-string/jumbo v3, "ZXING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(WriterException):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45a
    .catch Ljava/lang/Exception; {:try_start_43c .. :try_end_45a} :catch_45c

    goto/16 :goto_379

    .line 330
    :catch_45c
    move-exception v2

    .line 331
    const-string/jumbo v3, "ZXING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(Exception):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_379

    .line 341
    :catch_47d
    move-exception v2

    .line 342
    :try_start_47e
    const-string/jumbo v3, "ZXING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(WriterException):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49c
    .catch Ljava/lang/Exception; {:try_start_47e .. :try_end_49c} :catch_49e

    goto/16 :goto_397

    .line 344
    :catch_49e
    move-exception v2

    .line 345
    const-string/jumbo v3, "ZXING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(Exception):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_397

    .line 352
    :cond_4bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->q:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4da

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v14

    move-object v7, v13

    .line 353
    invoke-direct/range {v2 .. v9}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    goto/16 :goto_3a9

    .line 354
    :cond_4da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "code_128"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f9

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v14

    move-object v7, v13

    .line 355
    invoke-direct/range {v2 .. v9}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->b(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    goto/16 :goto_3a9

    .line 356
    :cond_4f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "qr_code"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_518

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v14

    move-object v7, v13

    .line 357
    invoke-direct/range {v2 .. v9}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->c(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    goto/16 :goto_3a9

    .line 358
    :cond_518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_551

    .line 359
    sget-object v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h:Ljava/lang/String;

    if-eqz v2, :cond_53f

    sget-object v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->h:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53f

    .line 360
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3a9

    .line 362
    :cond_53f
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v14

    move-object v7, v13

    .line 363
    invoke-direct/range {v2 .. v9}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    goto/16 :goto_3a9

    :cond_551
    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v14

    move-object v7, v13

    .line 366
    invoke-direct/range {v2 .. v9}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    goto/16 :goto_3a9

    .line 377
    :pswitch_55f
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3c6

    .line 380
    :pswitch_571
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3c6

    .line 383
    :pswitch_583
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3c6

    .line 386
    :pswitch_595
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3c6

    .line 389
    :pswitch_5a7
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3c6

    .line 392
    :pswitch_5b9
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3c6

    .line 395
    :pswitch_5cb
    invoke-virtual/range {p0 .. p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3c6

    .line 482
    :cond_5dd
    sget-wide v2, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->f:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_611

    .line 483
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 485
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 486
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 488
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 489
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3de

    .line 492
    :cond_611
    const v2, 0x7f1002f1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3de

    .line 375
    nop

    :pswitch_data_622
    .packed-switch 0x1
        :pswitch_55f
        :pswitch_571
        :pswitch_583
        :pswitch_595
        :pswitch_5a7
        :pswitch_5b9
        :pswitch_5cb
    .end packed-switch
.end method

.method private b(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V
    .registers 11

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 662
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 663
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 664
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 666
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 668
    invoke-virtual {p5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 670
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 671
    invoke-virtual {p5, p7}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 672
    invoke-virtual {p5, p7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 673
    return-void
.end method

.method private c(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V
    .registers 11

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 677
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 678
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 679
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 681
    invoke-virtual {p4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 682
    invoke-virtual {p5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 683
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    invoke-virtual {p4}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 686
    invoke-virtual {p4, p7}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 687
    invoke-virtual {p4, p7}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 688
    return-void
.end method

.method private static synthetic c(Landroid/view/View;)Z
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic f()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g()J
    .registers 2

    .prologue
    .line 56
    sget-wide v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->i:J

    return-wide v0
.end method

.method static synthetic h()J
    .registers 2

    .prologue
    .line 56
    sget-wide v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->f:J

    return-wide v0
.end method

.method static synthetic i()J
    .registers 2

    .prologue
    .line 56
    sget-wide v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->j:J

    return-wide v0
.end method

.method private k()Z
    .registers 3

    .prologue
    .line 637
    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    sget-object v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 638
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method protected a(F)I
    .registers 4

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 804
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->o:Z

    return v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->n:Z

    return v0
.end method

.method protected c()Z
    .registers 2

    .prologue
    .line 787
    const/4 v0, 0x1

    return v0
.end method

.method protected d()F
    .registers 2

    .prologue
    .line 792
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->m:F

    return v0
.end method

.method protected e()I
    .registers 2

    .prologue
    .line 797
    iget v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->l:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 113
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 115
    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    const-string/jumbo v1, "bundle_key_blur_radius"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->l:I

    .line 117
    const-string/jumbo v1, "bundle_key_down_scale_factor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->m:F

    .line 118
    const-string/jumbo v1, "bundle_key_dimming_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->n:Z

    .line 119
    const-string/jumbo v1, "bundle_key_debug_effect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->o:Z

    .line 120
    const-string/jumbo v1, "bundle_key_data"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->p:Ljava/lang/String;

    .line 123
    :try_start_37
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->p:Ljava/lang/String;

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .line 124
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getBarcode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->q:Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4c} :catch_4d

    .line 133
    :goto_4c
    return-void

    .line 125
    :catch_4d
    move-exception v0

    .line 127
    :try_start_4e
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->p:Ljava/lang/String;

    const-class v2, Lcom/bzbs/marketplace/model/PurchaseModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/PurchaseModel;

    .line 128
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/PurchaseModel;->getBarcode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->q:Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_63} :catch_64

    goto :goto_4c

    .line 129
    :catch_64
    move-exception v0

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->q:Ljava/lang/String;

    goto :goto_4c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0, p1}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d6

    .line 145
    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 146
    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 147
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 148
    sget-object v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 161
    :goto_28
    new-instance v2, Landroid/app/Dialog;

    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    const v1, 0x7f0c010a

    invoke-direct {v2, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 162
    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040134

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 163
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    invoke-virtual {p0, v6}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(F)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    const/high16 v5, 0x42700000    # 60.0f

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v1, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 165
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    sget v5, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    invoke-virtual {p0, v6}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->a(F)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    const v0, 0x7f1002b0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    const v0, 0x7f1002bb

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 170
    const v1, 0x7f1002b2

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 171
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    sget-object v1, Lcom/samsung/privilege/GalaxyGift;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    invoke-direct {p0, v3}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->b(Landroid/view/View;)V

    .line 176
    new-instance v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog$1;-><init>(Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 183
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 184
    return-object v2

    .line 150
    :cond_a1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 152
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_28

    .line 156
    :cond_d6
    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 157
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 158
    sget-object v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_28
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 189
    invoke-super {p0}, Lfr/tvbarthel/lib/blurdialogfragment/BlurDialogFragment;->onResume()V

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_29

    .line 192
    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 193
    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 194
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 195
    sget-object v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 203
    :cond_28
    :goto_28
    return-void

    .line 198
    :cond_29
    sget-object v0, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 199
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 200
    sget-object v1, Lcom/bzbs/marketplace/dialog/ShowCodeBlurDialog;->k:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_28
.end method
