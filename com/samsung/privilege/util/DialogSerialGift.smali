.class public Lcom/samsung/privilege/util/DialogSerialGift;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/samsung/privilege/util/DialogSerialGift;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;
    .registers 6

    .prologue
    .line 593
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 594
    const-string/jumbo v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AZTEC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 596
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->a:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    :goto_24
    const-string/jumbo v1, "ENCODE_TYPE"

    const-string/jumbo v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string/jumbo v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    return-object v0

    .line 597
    :cond_34
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODABAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 598
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->b:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 600
    :cond_53
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 601
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->c:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 603
    :cond_72
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 604
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->d:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 606
    :cond_91
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 607
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->e:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 609
    :cond_b1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DATA_MATRIX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 610
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->f:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 611
    :cond_cc
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 612
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->g:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 613
    :cond_e7
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 614
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->h:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 615
    :cond_102
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ITF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 616
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->i:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 617
    :cond_11d
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MAXICODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 618
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->j:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 619
    :cond_138
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PDF_417"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 620
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->k:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 621
    :cond_153
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "QR_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    .line 622
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 624
    :cond_173
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 625
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->m:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 626
    :cond_18e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_EXPANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 627
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->n:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 628
    :cond_1a9
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 629
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->o:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 630
    :cond_1c4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1df

    .line 631
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->p:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 632
    :cond_1df
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_EAN_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 633
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->q:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 635
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
    .line 643
    .line 646
    if-eqz p2, :cond_4b

    .line 647
    :try_start_2
    iget-object v0, p2, Lcom/bzbs/bean/Purchasing;->Type:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 648
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->Delivered:Z

    if-eqz v0, :cond_b1

    .line 649
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsShipped:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_6b

    if-eqz v0, :cond_8a

    .line 651
    const v0, 0x7f09031e

    :try_start_18
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_4c

    move-result-object v0

    .line 652
    :try_start_1c
    iget-object v1, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    if-eqz v1, :cond_4a

    iget-object v1, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09032f

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

    .line 737
    :cond_4b
    :goto_4b
    return-object p0

    .line 656
    :catch_4c
    move-exception v0

    .line 657
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

    .line 733
    :catch_6b
    move-exception v0

    .line 734
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

    .line 661
    :cond_8a
    const v0, 0x7f09031c

    :try_start_8d
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_92

    move-result-object p0

    goto :goto_4b

    .line 662
    :catch_92
    move-exception v0

    .line 663
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

    .line 667
    :cond_b1
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsSpecificPrintVoucher:Z
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b3} :catch_6b

    if-eqz v0, :cond_dd

    .line 669
    const v0, 0x7f090321

    :try_start_b8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bd

    move-result-object p0

    goto :goto_4b

    .line 670
    :catch_bd
    move-exception v0

    .line 671
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

    .line 674
    :cond_dd
    iget v0, p2, Lcom/bzbs/bean/Purchasing;->ExpireIn:I

    if-ltz v0, :cond_4b

    .line 677
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsUsed:Z

    if-nez v0, :cond_4b

    goto/16 :goto_4b

    .line 685
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

    .line 686
    :cond_fd
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsShipped:Z
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_ff} :catch_6b

    if-eqz v0, :cond_159

    .line 688
    const v0, 0x7f09031e

    :try_start_104
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_139

    move-result-object v0

    .line 689
    :try_start_108
    iget-object v1, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    if-eqz v1, :cond_136

    iget-object v1, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_136

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09032f

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

    .line 695
    goto/16 :goto_4b

    .line 693
    :catch_139
    move-exception v0

    .line 694
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

    .line 697
    :cond_159
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->Delivered:Z

    if-eqz v0, :cond_1b6

    .line 698
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;)Z
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_160} :catch_6b

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18d

    .line 700
    const v0, 0x7f09031c

    :try_start_167
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_16d

    move-result-object p0

    goto/16 :goto_4b

    .line 701
    :catch_16d
    move-exception v0

    .line 702
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

    .line 706
    :cond_18d
    const v0, 0x7f09032e

    :try_start_190
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_193} :catch_196

    move-result-object p0

    goto/16 :goto_4b

    .line 707
    :catch_196
    move-exception v0

    .line 708
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

    .line 712
    :cond_1b6
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsSpecificPrintVoucher:Z
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1b8} :catch_6b

    if-eqz v0, :cond_1e3

    .line 714
    const v0, 0x7f090321

    :try_start_1bd
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1c0} :catch_1c3

    move-result-object p0

    goto/16 :goto_4b

    .line 715
    :catch_1c3
    move-exception v0

    .line 716
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

    .line 719
    :cond_1e3
    iget v0, p2, Lcom/bzbs/bean/Purchasing;->ExpireIn:I

    if-ltz v0, :cond_4b

    .line 722
    iget-boolean v0, p2, Lcom/bzbs/bean/Purchasing;->IsUsed:Z
    :try_end_1e9
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1e9} :catch_6b

    if-nez v0, :cond_4b

    goto/16 :goto_4b

    .line 693
    :catch_1ed
    move-exception v1

    move-object p0, v0

    move-object v0, v1

    goto/16 :goto_13a

    .line 656
    :catch_1f2
    move-exception v1

    move-object p0, v0

    move-object v0, v1

    goto/16 :goto_4d
.end method

.method private static a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Landroid/app/Dialog;)V
    .registers 20

    .prologue
    .line 406
    const v2, 0x7f090148

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 407
    const v2, 0x7f090332

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 408
    const v2, 0x7f100612

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 409
    const v2, 0x7f10061a

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 410
    const v2, 0x7f10061b

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 411
    const v2, 0x7f100168

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 412
    const v2, 0x7f100613

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 413
    const v2, 0x7f100626

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 414
    if-nez p4, :cond_60

    .line 415
    const v2, 0x7f100611

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :cond_5f
    :goto_5f
    return-void

    .line 417
    :cond_60
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-lez v2, :cond_7b

    .line 418
    new-instance v2, Lcom/samsung/privilege/util/DialogSerialGift$11;

    move-object v3, p0

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v11}, Lcom/samsung/privilege/util/DialogSerialGift$11;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 493
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_5f

    .line 494
    :cond_7b
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-gtz v2, :cond_5f

    .line 495
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    const-string/jumbo v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    const-string/jumbo v2, " XXXXXXX "

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 500
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5f
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    .registers 16

    .prologue
    .line 49
    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    move-object v0, p0

    .line 50
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

    .line 87
    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V

    .line 88
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 43
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/DialogSerialGift;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 399
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

    .line 400
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

    .line 401
    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v0, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method static synthetic a()Z
    .registers 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/samsung/privilege/util/DialogSerialGift;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 43
    sput-boolean p0, Lcom/samsung/privilege/util/DialogSerialGift;->b:Z

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/privilege/util/DialogSerialGift;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    .registers 20

    .prologue
    .line 91
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_373

    .line 93
    new-instance v7, Landroid/app/Dialog;

    const v2, 0x7f0d00fe

    invoke-direct {v7, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 95
    const v2, 0x7f040128

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 97
    const v2, 0x7f100612

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 99
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 100
    const/4 v4, 0x1

    if-ne v3, v4, :cond_374

    .line 102
    const-string/jumbo v3, "#fc6864"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    :cond_36
    :goto_36
    const v2, 0x7f100610

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 130
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 131
    const-wide/32 v4, 0x500000

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 133
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 134
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 135
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 136
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 142
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 143
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setHapticFeedbackEnabled(Z)V

    .line 144
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 145
    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 146
    new-instance v4, Landroid/webkit/WebChromeClient;

    invoke-direct {v4}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 147
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 149
    if-eqz p6, :cond_3ce

    const-string/jumbo v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3ce

    .line 151
    const-string/jumbo v3, "&lt;"

    const-string/jumbo v4, "<"

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "&gt;"

    const-string/jumbo v5, ">"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    const-string/jumbo v4, "<serial>"

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-static {p0, v2, v3}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 158
    :goto_b5
    const v2, 0x7f10060f

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v2, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    if-eqz v2, :cond_3fb

    iget-object v2, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3fb

    .line 165
    iget-object v2, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "None"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f8

    .line 166
    if-eqz p6, :cond_3f5

    const-string/jumbo v2, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f5

    .line 167
    const/4 v2, 0x0

    .line 178
    :goto_f0
    if-eqz p5, :cond_3fe

    const-string/jumbo v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3fe

    .line 184
    :goto_fd
    const/4 v3, 0x1

    if-ne v2, v3, :cond_481

    .line 185
    const v2, 0x7f10014a

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const v2, 0x7f10061a

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 188
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v2, 0x7f100615

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 191
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const v2, 0x7f100628

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 194
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v2, 0x7f100614

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 198
    :try_start_13e
    const-string/jumbo v3, "CODE_128"

    move-object/from16 v0, p5

    invoke-static {v3, v0, v2}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v4

    .line 199
    new-instance v5, Lcom/bzbs/zxing/QRCodeEncoder;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    const/16 v6, 0x1f4

    const/4 v8, 0x0

    invoke-direct {v5, v3, v4, v6, v8}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_153} :catch_421

    .line 201
    :try_start_153
    invoke-virtual {v5}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_15a
    .catch Lcom/google/zxing/WriterException; {:try_start_153 .. :try_end_15a} :catch_401
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_15a} :catch_421

    .line 210
    :goto_15a
    const v2, 0x7f100627

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 212
    :try_start_163
    const-string/jumbo v3, "QR_CODE"

    move-object/from16 v0, p5

    invoke-static {v3, v0, v2}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v4

    .line 213
    new-instance v5, Lcom/bzbs/zxing/QRCodeEncoder;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    const/16 v6, 0x1f4

    const/4 v8, 0x0

    invoke-direct {v5, v3, v4, v6, v8}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_178} :catch_461

    .line 215
    :try_start_178
    invoke-virtual {v5}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 216
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_17f
    .catch Lcom/google/zxing/WriterException; {:try_start_178 .. :try_end_17f} :catch_441
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_17f} :catch_461

    .line 227
    :goto_17f
    const v2, 0x7f10017a

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 228
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMM yyyy HH:mm"

    invoke-static {p0}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 230
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 231
    if-eqz p2, :cond_1b0

    .line 233
    new-instance v3, Ljava/util/Date;

    iget-wide v8, p2, Lcom/bzbs/bean/Purchasing;->RedeemDate:J

    const-wide/16 v10, 0x6270

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 235
    :cond_1b0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09014c

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

    .line 237
    const v2, 0x7f1005a8

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 238
    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$1;

    invoke-direct {v3, v7}, Lcom/samsung/privilege/util/DialogSerialGift$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const v2, 0x7f100168

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    .line 268
    const v2, 0x7f100613

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    .line 269
    const v2, 0x7f100626

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    .line 270
    const v2, 0x7f100620

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 271
    const v3, 0x7f100611

    invoke-virtual {v7, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 273
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    const/4 v4, 0x4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v4, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    if-eqz v4, :cond_257

    iget-object v4, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_257

    .line 279
    iget-object v4, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v5, "CODE_128"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48f

    .line 280
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    :cond_257
    :goto_257
    const/4 v4, 0x0

    .line 291
    if-eqz p2, :cond_2e5

    .line 292
    iget-object v5, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    if-eqz v5, :cond_2e5

    iget-object v5, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e5

    .line 293
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    const/4 v4, 0x4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    const v2, 0x7f10014a

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 298
    const v2, 0x7f10060f

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 299
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 301
    const/4 v4, 0x1

    .line 303
    const v2, 0x7f09031e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f09032f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 305
    const v2, 0x7f100621

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    const v2, 0x7f100622

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p2, Lcom/bzbs/bean/Purchasing;->ParcelNo:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const v2, 0x7f100624

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v5, Lcom/samsung/privilege/util/DialogSerialGift$2;

    invoke-direct {v5, p2, p0}, Lcom/samsung/privilege/util/DialogSerialGift$2;-><init>(Lcom/bzbs/bean/Purchasing;Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2e5
    move v2, v4

    .line 321
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4a8

    .line 322
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 334
    :goto_2ee
    const v2, 0x7f10061c

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$3;

    invoke-direct {v3, p0, v8, v9}, Lcom/samsung/privilege/util/DialogSerialGift$3;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const v2, 0x7f10061e

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$4;

    invoke-direct {v3, p0, v8, v10}, Lcom/samsung/privilege/util/DialogSerialGift$4;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v2, 0x7f100616

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$5;

    invoke-direct {v3, p0, v9, v8}, Lcom/samsung/privilege/util/DialogSerialGift$5;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    const v2, 0x7f100618

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$6;

    invoke-direct {v3, p0, v9, v10}, Lcom/samsung/privilege/util/DialogSerialGift$6;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    const v2, 0x7f100629

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$7;

    invoke-direct {v3, p0, v10, v8}, Lcom/samsung/privilege/util/DialogSerialGift$7;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v2, 0x7f10062b

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/DialogSerialGift$8;

    invoke-direct {v3, p0, v10, v9}, Lcom/samsung/privilege/util/DialogSerialGift$8;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 376
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 377
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 379
    new-instance v2, Lcom/samsung/privilege/util/DialogSerialGift$9;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/util/DialogSerialGift$9;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 385
    new-instance v2, Lcom/samsung/privilege/util/DialogSerialGift$10;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/util/DialogSerialGift$10;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 392
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/samsung/privilege/util/ScreenUtil;->c(Landroid/app/Activity;)V

    .line 394
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 396
    :cond_373
    return-void

    .line 103
    :cond_374
    const/4 v4, 0x2

    if-ne v3, v4, :cond_383

    .line 105
    const-string/jumbo v3, "#feee1f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_36

    .line 106
    :cond_383
    const/4 v4, 0x3

    if-ne v3, v4, :cond_392

    .line 108
    const-string/jumbo v3, "#ff99ff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_36

    .line 109
    :cond_392
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3a1

    .line 111
    const-string/jumbo v3, "#bcde8a"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_36

    .line 112
    :cond_3a1
    const/4 v4, 0x5

    if-ne v3, v4, :cond_3b0

    .line 114
    const-string/jumbo v3, "#fcac15"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_36

    .line 115
    :cond_3b0
    const/4 v4, 0x6

    if-ne v3, v4, :cond_3bf

    .line 117
    const-string/jumbo v3, "#00fffc"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_36

    .line 118
    :cond_3bf
    const/4 v4, 0x7

    if-ne v3, v4, :cond_36

    .line 120
    const-string/jumbo v3, "#8045dd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_36

    .line 156
    :cond_3ce
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<div align=\'center\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f09014d

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

    goto/16 :goto_b5

    .line 169
    :cond_3f5
    const/4 v2, 0x1

    goto/16 :goto_f0

    .line 172
    :cond_3f8
    const/4 v2, 0x1

    goto/16 :goto_f0

    .line 175
    :cond_3fb
    const/4 v2, 0x1

    goto/16 :goto_f0

    .line 181
    :cond_3fe
    const/4 v2, 0x0

    goto/16 :goto_fd

    .line 203
    :catch_401
    move-exception v2

    .line 204
    :try_start_402
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
    :try_end_41f
    .catch Ljava/lang/Exception; {:try_start_402 .. :try_end_41f} :catch_421

    goto/16 :goto_15a

    .line 206
    :catch_421
    move-exception v2

    .line 207
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

    goto/16 :goto_15a

    .line 217
    :catch_441
    move-exception v2

    .line 218
    :try_start_442
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
    :try_end_45f
    .catch Ljava/lang/Exception; {:try_start_442 .. :try_end_45f} :catch_461

    goto/16 :goto_17f

    .line 220
    :catch_461
    move-exception v2

    .line 221
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

    goto/16 :goto_17f

    .line 224
    :cond_481
    const v2, 0x7f10014a

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_17f

    .line 283
    :cond_48f
    iget-object v4, p3, Lcom/bzbs/bean/Campaign;->Barcode:Ljava/lang/String;

    const-string/jumbo v5, "QR_CODE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_257

    .line 284
    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    const/4 v4, 0x4

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_257

    .line 325
    :cond_4a8
    if-eqz p4, :cond_4b9

    .line 326
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    .line 327
    invoke-static/range {v2 .. v7}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Landroid/app/Dialog;)V

    goto/16 :goto_2ee

    .line 329
    :cond_4b9
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2ee
.end method

.method private static b(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 548
    const v0, 0x7f05004c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 549
    new-instance v1, Lcom/samsung/privilege/util/DialogSerialGift$13;

    invoke-direct {v1, p1, p0, p2}, Lcom/samsung/privilege/util/DialogSerialGift$13;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 588
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 589
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 590
    return-void
.end method
