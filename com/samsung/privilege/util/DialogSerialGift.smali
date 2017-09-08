.class public Lcom/samsung/privilege/util/DialogSerialGift;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/app/Dialog;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-class v0, Lcom/samsung/privilege/util/DialogSerialGift;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;
    .registers 6

    .prologue
    .line 683
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 684
    const-string/jumbo v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AZTEC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 686
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->a:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    :goto_24
    const-string/jumbo v1, "ENCODE_TYPE"

    const-string/jumbo v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string/jumbo v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    return-object v0

    .line 687
    :cond_34
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODABAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 688
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->b:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 690
    :cond_53
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 691
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->c:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 693
    :cond_72
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 694
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->d:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 696
    :cond_91
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 697
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->e:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 699
    :cond_b1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DATA_MATRIX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 700
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->f:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 701
    :cond_cc
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 702
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->g:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 703
    :cond_e7
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 704
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->h:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 705
    :cond_102
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ITF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 706
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->i:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 707
    :cond_11d
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MAXICODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 708
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->j:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 709
    :cond_138
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PDF_417"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 710
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->k:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 711
    :cond_153
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "QR_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    .line 712
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 714
    :cond_173
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 715
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->m:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 716
    :cond_18e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_EXPANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 717
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->n:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 718
    :cond_1a9
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 719
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->o:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 720
    :cond_1c4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1df

    .line 721
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->p:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 722
    :cond_1df
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_EAN_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 723
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->q:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 725
    :cond_1fa
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->e:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24
.end method

.method private static a(Ljava/lang/String;Landroid/app/Activity;Lcom/bzbs/bean/Purchasing;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 733
    .line 736
    if-eqz p2, :cond_4b

    .line 737
    :try_start_2
    iget-object v0, p2, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 738
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->Delivered:Z

    if-eqz v0, :cond_b1

    .line 739
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsShipped:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_6b

    if-eqz v0, :cond_8a

    .line 741
    const v0, 0x7f0902b0

    :try_start_18
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_4c

    move-result-object v0

    .line 742
    :try_start_1c
    iget-object v1, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    if-eqz v1, :cond_4a

    iget-object v1, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0902b3

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_49} :catch_1f2

    move-result-object v0

    :cond_4a
    move-object p0, v0

    .line 827
    :cond_4b
    :goto_4b
    return-object p0

    .line 746
    :catch_4c
    move-exception v0

    .line 747
    :goto_4d
    :try_start_4d
    sget-object v1, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6a} :catch_6b

    goto :goto_4b

    .line 823
    :catch_6b
    move-exception v0

    .line 824
    sget-object v1, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 751
    :cond_8a
    const v0, 0x7f0902af

    :try_start_8d
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_92

    move-result-object p0

    goto :goto_4b

    .line 752
    :catch_92
    move-exception v0

    .line 753
    :try_start_93
    sget-object v1, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 757
    :cond_b1
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsSpecificPrintVoucher:Z
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b3} :catch_6b

    if-eqz v0, :cond_dd

    .line 759
    const v0, 0x7f0902b1

    :try_start_b8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bd

    move-result-object p0

    goto :goto_4b

    .line 760
    :catch_bd
    move-exception v0

    .line 761
    :try_start_be
    sget-object v1, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 764
    :cond_dd
    iget v0, p2, Lcom/bzbs/bean/Purchasing;->ExpireIn:I

    if-ltz v0, :cond_4b

    .line 767
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsUsed:Z

    if-nez v0, :cond_4b

    goto/16 :goto_4b

    .line 775
    :cond_e7
    iget-object v0, p2, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    iget-object v0, p2, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 776
    :cond_fd
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsShipped:Z
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_ff} :catch_6b

    if-eqz v0, :cond_159

    .line 778
    const v0, 0x7f0902b0

    :try_start_104
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_139

    move-result-object v0

    .line 779
    :try_start_108
    iget-object v1, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    if-eqz v1, :cond_136

    iget-object v1, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_136

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0902b3

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_135} :catch_1ed

    move-result-object v0

    :cond_136
    move-object p0, v0

    .line 785
    goto/16 :goto_4b

    .line 783
    :catch_139
    move-exception v0

    .line 784
    :goto_13a
    :try_start_13a
    sget-object v1, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 787
    :cond_159
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->Delivered:Z

    if-eqz v0, :cond_1b6

    .line 788
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->i(Landroid/content/Context;)Z
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_160} :catch_6b

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18d

    .line 790
    const v0, 0x7f0902af

    :try_start_167
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_16d

    move-result-object p0

    goto/16 :goto_4b

    .line 791
    :catch_16d
    move-exception v0

    .line 792
    :try_start_16e
    sget-object v1, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_18b} :catch_6b

    goto/16 :goto_4b

    .line 796
    :cond_18d
    const v0, 0x7f0902b2

    :try_start_190
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_193} :catch_196

    move-result-object p0

    goto/16 :goto_4b

    .line 797
    :catch_196
    move-exception v0

    .line 798
    :try_start_197
    sget-object v1, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 802
    :cond_1b6
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsSpecificPrintVoucher:Z
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1b8} :catch_6b

    if-eqz v0, :cond_1e3

    .line 804
    const v0, 0x7f0902b1

    :try_start_1bd
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1c0} :catch_1c3

    move-result-object p0

    goto/16 :goto_4b

    .line 805
    :catch_1c3
    move-exception v0

    .line 806
    :try_start_1c4
    sget-object v1, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 809
    :cond_1e3
    iget v0, p2, Lcom/bzbs/bean/Purchasing;->ExpireIn:I

    if-ltz v0, :cond_4b

    .line 812
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsUsed:Z
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1e9} :catch_6b

    if-nez v0, :cond_4b

    goto/16 :goto_4b

    .line 783
    :catch_1ed
    move-exception v1

    move-object p0, v0

    move-object v0, v1

    goto/16 :goto_13a

    .line 746
    :catch_1f2
    move-exception v1

    move-object p0, v0

    move-object v0, v1

    goto/16 :goto_4d
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 832
    :try_start_0
    sget-object v0, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 833
    sget-object v0, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 838
    :cond_9
    :goto_9
    return-void

    .line 835
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private static a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Landroid/app/Dialog;)V
    .registers 20

    .prologue
    .line 496
    const v2, 0x7f09008c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 497
    const v2, 0x7f090165

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 498
    const v2, 0x7f100472

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 499
    const v2, 0x7f100479

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 500
    const v2, 0x7f10047a

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 501
    const v2, 0x7f100478

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 502
    const v2, 0x7f100473

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 503
    const v2, 0x7f100483

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 504
    if-nez p4, :cond_60

    .line 505
    const v2, 0x7f100470

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :cond_5f
    :goto_5f
    return-void

    .line 507
    :cond_60
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-lez v2, :cond_7b

    .line 508
    new-instance v2, Lcom/samsung/privilege/util/DialogSerialGift$12;

    move-object v3, p0

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v11}, Lcom/samsung/privilege/util/DialogSerialGift$12;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 583
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_5f

    .line 584
    :cond_7b
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-gtz v2, :cond_5f

    .line 585
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    const-string/jumbo v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    const-string/jumbo v2, " XXXXXXX "

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 589
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 590
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 591
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5f
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    .registers 16

    .prologue
    .line 63
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    move-object v0, p0

    .line 64
    check-cast v0, Landroid/app/Activity;

    invoke-static {p6, v0, p2}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/bzbs/bean/Purchasing;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p7

    .line 101
    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V

    .line 102
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/DialogSerialGift;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<head><style>@font-face {font-family: \'verdana\';src: url(\'file:///android_asset/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\');}body {font-family: \'verdana\';font-size:18pt;font-style:normal;}</style></head>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<body>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v0, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/samsung/privilege/util/DialogSerialGift;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 55
    sput-boolean p0, Lcom/samsung/privilege/util/DialogSerialGift;->c:Z

    return p0
.end method

.method static synthetic b()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    .registers 19

    .prologue
    .line 105
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_431

    .line 107
    :try_start_9
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    if-eqz v2, :cond_12

    .line 108
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_595

    .line 115
    :cond_12
    :goto_12
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f0c00fe

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    .line 117
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 118
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x2000

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 119
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    const-string/jumbo v3, "dialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE);"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_37
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f0400cf

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 124
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100472

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 126
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 127
    const/4 v4, 0x1

    if-ne v3, v4, :cond_432

    .line 129
    const-string/jumbo v3, "#fc6864"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    :cond_60
    :goto_60
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f10046e

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 157
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 158
    const-wide/32 v4, 0x500000

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 160
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 161
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 162
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 163
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 167
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 169
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 170
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    .line 171
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 172
    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 173
    new-instance v4, Landroid/webkit/WebChromeClient;

    invoke-direct {v4}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 174
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 176
    if-eqz p6, :cond_48c

    const-string/jumbo v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48c

    .line 178
    const-string/jumbo v3, "&lt;"

    const-string/jumbo v4, "<"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "&gt;"

    const-string/jumbo v5, ">"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    const-string/jumbo v4, "<serial>"

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {p0, v2, v3}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 185
    :goto_e1
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f10046d

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :try_start_ee
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f10046f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    if-eqz p3, :cond_140

    .line 190
    iget-object v2, p3, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    if-eqz v2, :cond_140

    iget-object v2, p3, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_140

    .line 191
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p3, Lcom/bzbs/bean/Campaign;->jsonExtra:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v3, "samsung_pay"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 193
    const/4 v3, 0x1

    if-ne v2, v3, :cond_140

    .line 194
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f10046f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f10046f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$1;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/util/DialogSerialGift$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_140} :catch_4b3

    .line 236
    :cond_140
    :goto_140
    if-eqz p3, :cond_4cd

    .line 237
    iget-object v2, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    if-eqz v2, :cond_4ca

    iget-object v2, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4ca

    .line 238
    iget-object v2, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "None"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c7

    .line 239
    if-eqz p6, :cond_4c4

    const-string/jumbo v2, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c4

    .line 240
    const/4 v2, 0x0

    .line 254
    :goto_172
    if-eqz p5, :cond_4d0

    const-string/jumbo v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d0

    .line 260
    :goto_17f
    const/4 v3, 0x1

    if-ne v2, v3, :cond_553

    .line 261
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100154

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100479

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 264
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100475

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 267
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100485

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 270
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100474

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 274
    :try_start_1ca
    const-string/jumbo v3, "CODE_128"

    move-object/from16 v0, p5

    invoke-static {v3, v0, v2}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v4

    .line 275
    new-instance v5, Lcom/bzbs/zxing/QRCodeEncoder;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    invoke-direct {v5, v3, v4, v6, v7}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1df} :catch_4f3

    .line 277
    :try_start_1df
    invoke-virtual {v5}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 278
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1e6
    .catch Lcom/google/zxing/WriterException; {:try_start_1df .. :try_end_1e6} :catch_4d3
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e6} :catch_4f3

    .line 286
    :goto_1e6
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100484

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 288
    :try_start_1f1
    const-string/jumbo v3, "QR_CODE"

    move-object/from16 v0, p5

    invoke-static {v3, v0, v2}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v4

    .line 289
    new-instance v5, Lcom/bzbs/zxing/QRCodeEncoder;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    invoke-direct {v5, v3, v4, v6, v7}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_206} :catch_533

    .line 291
    :try_start_206
    invoke-virtual {v5}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 292
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_20d
    .catch Lcom/google/zxing/WriterException; {:try_start_206 .. :try_end_20d} :catch_513
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_20d} :catch_533

    .line 303
    :goto_20d
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100175

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 304
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMM yyyy HH:mm"

    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 306
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 307
    if-eqz p2, :cond_240

    .line 309
    new-instance v3, Ljava/util/Date;

    iget-wide v6, p2, Lcom/bzbs/bean/Purchasing;->RedeemDate:J

    const-wide/16 v8, 0x6270

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 311
    :cond_240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09008e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f1003f4

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 314
    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$2;

    invoke-direct {v3}, Lcom/samsung/privilege/util/DialogSerialGift$2;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100478

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    .line 344
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100473

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    .line 345
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100483

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    .line 346
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f10047d

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 347
    sget-object v3, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v4, 0x7f100470

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 349
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    const/4 v4, 0x4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    if-eqz p3, :cond_2f5

    .line 355
    iget-object v4, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    if-eqz v4, :cond_2f5

    iget-object v4, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f5

    .line 356
    iget-object v4, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v5, "CODE_128"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_563

    .line 357
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    :cond_2f5
    :goto_2f5
    const/4 v4, 0x0

    .line 369
    if-eqz p2, :cond_38d

    .line 370
    iget-object v5, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    if-eqz v5, :cond_38d

    iget-object v5, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38d

    .line 371
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    const/4 v4, 0x4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 374
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v4, 0x7f100154

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 376
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v4, 0x7f10046d

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 377
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 379
    const/4 v4, 0x1

    .line 381
    const v2, 0x7f0902b0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f0902b3

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 383
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v6, 0x7f10047e

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v5, 0x7f10047f

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v5, 0x7f100481

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/samsung/privilege/util/DialogSerialGift$3;

    invoke-direct {v5, p2, p0}, Lcom/samsung/privilege/util/DialogSerialGift$3;-><init>(Lcom/bzbs/bean/Purchasing;Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_38d
    move v2, v4

    .line 399
    const/4 v4, 0x1

    if-ne v2, v4, :cond_57c

    .line 400
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 412
    :goto_396
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f10047b

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$4;

    invoke-direct {v3, p0, v8, v9}, Lcom/samsung/privilege/util/DialogSerialGift$4;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f10047c

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$5;

    invoke-direct {v3, p0, v8, v10}, Lcom/samsung/privilege/util/DialogSerialGift$5;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100476

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$6;

    invoke-direct {v3, p0, v9, v8}, Lcom/samsung/privilege/util/DialogSerialGift$6;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100477

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$7;

    invoke-direct {v3, p0, v9, v10}, Lcom/samsung/privilege/util/DialogSerialGift$7;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100486

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$8;

    invoke-direct {v3, p0, v10, v8}, Lcom/samsung/privilege/util/DialogSerialGift$8;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100487

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$9;

    invoke-direct {v3, p0, v10, v9}, Lcom/samsung/privilege/util/DialogSerialGift$9;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 454
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 455
    sget-object v3, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 457
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$10;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/util/DialogSerialGift$10;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 463
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$11;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/util/DialogSerialGift$11;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 482
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/samsung/privilege/util/ScreenUtil;->c(Landroid/app/Activity;)V

    .line 484
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 486
    :cond_431
    return-void

    .line 130
    :cond_432
    const/4 v4, 0x2

    if-ne v3, v4, :cond_441

    .line 132
    const-string/jumbo v3, "#feee1f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_60

    .line 133
    :cond_441
    const/4 v4, 0x3

    if-ne v3, v4, :cond_450

    .line 135
    const-string/jumbo v3, "#ff99ff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_60

    .line 136
    :cond_450
    const/4 v4, 0x4

    if-ne v3, v4, :cond_45f

    .line 138
    const-string/jumbo v3, "#bcde8a"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_60

    .line 139
    :cond_45f
    const/4 v4, 0x5

    if-ne v3, v4, :cond_46e

    .line 141
    const-string/jumbo v3, "#fcac15"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_60

    .line 142
    :cond_46e
    const/4 v4, 0x6

    if-ne v3, v4, :cond_47d

    .line 144
    const-string/jumbo v3, "#00fffc"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_60

    .line 145
    :cond_47d
    const/4 v4, 0x7

    if-ne v3, v4, :cond_60

    .line 147
    const-string/jumbo v3, "#8045dd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_60

    .line 183
    :cond_48c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<div align=\'center\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f09008f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</div>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 228
    :catch_4b3
    move-exception v2

    .line 229
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f10046f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_140

    .line 242
    :cond_4c4
    const/4 v2, 0x1

    goto/16 :goto_172

    .line 245
    :cond_4c7
    const/4 v2, 0x1

    goto/16 :goto_172

    .line 248
    :cond_4ca
    const/4 v2, 0x1

    goto/16 :goto_172

    .line 251
    :cond_4cd
    const/4 v2, 0x1

    goto/16 :goto_172

    .line 257
    :cond_4d0
    const/4 v2, 0x0

    goto/16 :goto_17f

    .line 279
    :catch_4d3
    move-exception v2

    .line 280
    :try_start_4d4
    sget-object v3, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

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

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f1
    .catch Ljava/lang/Exception; {:try_start_4d4 .. :try_end_4f1} :catch_4f3

    goto/16 :goto_1e6

    .line 282
    :catch_4f3
    move-exception v2

    .line 283
    sget-object v3, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

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

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e6

    .line 293
    :catch_513
    move-exception v2

    .line 294
    :try_start_514
    sget-object v3, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

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

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_531
    .catch Ljava/lang/Exception; {:try_start_514 .. :try_end_531} :catch_533

    goto/16 :goto_20d

    .line 296
    :catch_533
    move-exception v2

    .line 297
    sget-object v3, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

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

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20d

    .line 300
    :cond_553
    sget-object v2, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    const v3, 0x7f100154

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_20d

    .line 360
    :cond_563
    iget-object v4, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v5, "QR_CODE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f5

    .line 361
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    const/4 v4, 0x4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2f5

    .line 403
    :cond_57c
    if-eqz p4, :cond_58e

    .line 404
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 405
    sget-object v7, Lcom/samsung/privilege/util/DialogSerialGift;->b:Landroid/app/Dialog;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Landroid/app/Dialog;)V

    goto/16 :goto_396

    .line 407
    :cond_58e
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_396

    .line 110
    :catch_595
    move-exception v2

    goto/16 :goto_12
.end method

.method private static b(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 638
    const v0, 0x7f05003a

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 639
    new-instance v1, Lcom/samsung/privilege/util/DialogSerialGift$13;

    invoke-direct {v1, p1, p0, p2}, Lcom/samsung/privilege/util/DialogSerialGift$13;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 677
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 678
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 679
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 680
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 843
    const-string v2, "samsung"
    .line 844
    const-string v3, "samsung"
    .line 845
    const-string/jumbo v4, "Samsung"

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_19

    const-string/jumbo v2, "Samsung"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_19

    .line 862
    :cond_18
    :goto_18
    return v0

    .line 851
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.spay"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_24} :catch_3b

    .line 857
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android"

    const-string/jumbo v4, "com.samsung.android.spay"

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_39

    move v2, v1

    .line 858
    :goto_35
    if-eqz v2, :cond_18

    move v0, v1

    .line 862
    goto :goto_18

    :cond_39
    move v2, v0

    .line 857
    goto :goto_35

    .line 852
    :catch_3b
    move-exception v1

    goto :goto_18
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/samsung/privilege/util/DialogSerialGift;->c:Z

    return v0
.end method
