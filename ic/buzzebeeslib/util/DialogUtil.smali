.class public Lic/buzzebeeslib/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static gIsFinish:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lic/buzzebeeslib/util/DialogUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lic/buzzebeeslib/util/DialogUtil;->TAG:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;
    .registers 6
    .param p0, "barcode_type"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "imgBarcode"    # Landroid/widget/ImageView;

    .prologue
    .line 486
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 487
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AZTEC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 489
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    :goto_21
    const-string v1, "ENCODE_TYPE"

    const-string v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    return-object v0

    .line 490
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODABAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 491
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 493
    :cond_4b
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODE_39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 494
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 496
    :cond_68
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODE_93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 497
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 499
    :cond_85
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CODE_128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 500
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_21

    .line 502
    :cond_a2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DATA_MATRIX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 503
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 504
    :cond_bb
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EAN_8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 505
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 506
    :cond_d4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EAN_13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 507
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 508
    :cond_ed
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ITF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 509
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 510
    :cond_106
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAXICODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 511
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 512
    :cond_11f
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PDF_417"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 513
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 514
    :cond_138
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QR_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 515
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_21

    .line 517
    :cond_156
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSS_14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 518
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 519
    :cond_16f
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSS_EXPANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_188

    .line 520
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 521
    :cond_188
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPC_A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 522
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 523
    :cond_1a1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPC_E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 524
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 525
    :cond_1ba
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPC_EAN_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 526
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 528
    :cond_1d3
    const-string v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21
.end method

.method public static loadImageAnimate(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/16 v3, 0x64

    .line 456
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 457
    .local v0, "animDraw":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 459
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 460
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 461
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 462
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock7:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 464
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock8:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 465
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 466
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 467
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock11:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 468
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 469
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock13:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 470
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock14:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 471
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock15:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 472
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$drawable;->clock16:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 473
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 475
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    new-instance v1, Lic/buzzebeeslib/util/DialogUtil$6;

    invoke-direct {v1, v0}, Lic/buzzebeeslib/util/DialogUtil$6;-><init>(Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 483
    return-void
.end method

.method public static showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 911
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_48

    .line 912
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 914
    .local v1, "dialogError":Landroid/app/Dialog;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/kit55p.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 916
    .local v2, "font":Landroid/graphics/Typeface;
    sget v4, Lic/buzzebeeslib/R$layout;->bz_dialog_error:I

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 917
    const-string v4, "Information"

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 919
    sget v4, Lic/buzzebeeslib/R$idDialogError;->tvMessage:I

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 920
    .local v3, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 921
    sget v4, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SIZE:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 922
    sget v4, Lic/buzzebeeslib/R$idDialogError;->btnClose:I

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 924
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    new-instance v4, Lic/buzzebeeslib/util/DialogUtil$12;

    invoke-direct {v4, v1}, Lic/buzzebeeslib/util/DialogUtil$12;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 934
    .end local v0    # "btnClose":Landroid/widget/Button;
    .end local v1    # "dialogError":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "tvMessage":Landroid/widget/TextView;
    :cond_48
    return-void
.end method

.method public static showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 885
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_48

    .line 886
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 888
    .local v1, "dialogError":Landroid/app/Dialog;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/kit55p.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 890
    .local v2, "font":Landroid/graphics/Typeface;
    sget v4, Lic/buzzebeeslib/R$layout;->bz_dialog_error:I

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 891
    const-string v4, "Information"

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 893
    sget v4, Lic/buzzebeeslib/R$idDialogError;->tvMessage:I

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 894
    .local v3, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 895
    sget v4, Lic/buzzebeeslib/LibConst;->FONTS_DEFAULT_SIZE:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 896
    sget v4, Lic/buzzebeeslib/R$idDialogError;->btnClose:I

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 898
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    new-instance v4, Lic/buzzebeeslib/util/DialogUtil$11;

    invoke-direct {v4, v1}, Lic/buzzebeeslib/util/DialogUtil$11;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 908
    .end local v0    # "btnClose":Landroid/widget/Button;
    .end local v1    # "dialogError":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "tvMessage":Landroid/widget/TextView;
    :cond_48
    return-void
.end method

.method public static showDialogSerial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;)V
    .registers 44
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "pStrID"    # Ljava/lang/String;
    .param p2, "pStrAgencyName"    # Ljava/lang/String;
    .param p3, "pStrName"    # Ljava/lang/String;
    .param p4, "pLngExpireIn"    # J
    .param p6, "pStrSerial"    # Ljava/lang/String;
    .param p7, "pStrPrivilegeMessage"    # Ljava/lang/String;
    .param p8, "server_time"    # J
    .param p10, "local_time"    # J
    .param p12, "pImageFetcher"    # Lcom/bitmapfun/util/ImageFetcher;

    .prologue
    .line 539
    sget-object v2, Lic/buzzebeeslib/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "showDialogSerial|pStrSerial |"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pStrPrivilegeMessage |"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 542
    .local v25, "strserver_time":Ljava/lang/String;
    const-string v2, "DialogUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "server_time("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 545
    .local v24, "strlocal_time":Ljava/lang/String;
    const-string v2, "DialogUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "local_time("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p10

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v20, Landroid/app/Dialog;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 551
    .local v20, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 552
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_serial_number:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 553
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 556
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v6, 0x3

    if-eq v2, v6, :cond_d4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v6, 0x4

    if-ne v2, v6, :cond_269

    .line 557
    :cond_d4
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v30

    .line 558
    .local v30, "window":Landroid/view/Window;
    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v6, v2

    const-wide v8, 0x3feccccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v2, v6

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe6666666666666L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v6}, Landroid/view/Window;->setLayout(II)V

    .line 572
    :goto_105
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 573
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 574
    .local v26, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvSerial1:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 575
    .local v27, "tvSerial1":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvSerial4:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 576
    .local v15, "tvSerial4":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvSerial6:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 577
    .local v28, "tvSerial6":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvSerial7:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 578
    .local v16, "tvSerial7":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 579
    .local v18, "btnClose":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 580
    .local v29, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 581
    .local v22, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    .line 582
    .local v19, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v6, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    :try_start_18f
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v6, "fonts/kit55p.ttf"

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v21

    .line 587
    .local v21, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 588
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 589
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 590
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 591
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 592
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1c1} :catch_341

    .line 599
    .end local v21    # "font":Landroid/graphics/Typeface;
    :goto_1c1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v6, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/campaign/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/picture/modifydate="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "img_url":Ljava/lang/String;
    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    move-object/from16 v2, p12

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 601
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    if-eqz p7, :cond_314

    const-string v2, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_314

    .line 606
    const/4 v2, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    move-object/from16 v23, p7

    .line 610
    .local v23, "str_privilege_message":Ljava/lang/String;
    const-string v2, "<serial>"

    move-object/from16 v0, v23

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 611
    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    .end local v23    # "str_privilege_message":Ljava/lang/String;
    :cond_217
    :goto_217
    sget v2, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_time:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 621
    .local v14, "strRemain":Ljava/lang/String;
    sget v2, Lic/buzzebeeslib/R$string;->purchasing_this_serial_is_expired:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 622
    .local v13, "strExpire":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v2, p4, v6

    if-lez v2, :cond_334

    .line 626
    new-instance v5, Lic/buzzebeeslib/util/DialogUtil$7;

    move-object/from16 v6, p0

    move-wide/from16 v7, p8

    move-wide/from16 v9, p4

    move-wide/from16 v11, p10

    invoke-direct/range {v5 .. v16}, Lic/buzzebeeslib/util/DialogUtil$7;-><init>(Landroid/app/Activity;JJJLjava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 694
    .local v5, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 703
    .end local v5    # "runnable":Ljava/lang/Runnable;
    :cond_242
    :goto_242
    new-instance v2, Lic/buzzebeeslib/util/DialogUtil$8;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lic/buzzebeeslib/util/DialogUtil$8;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    .line 714
    .local v17, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x11

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 715
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 717
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->show()V

    .line 718
    return-void

    .line 559
    .end local v3    # "img_url":Ljava/lang/String;
    .end local v4    # "imgCampaign":Landroid/widget/ImageView;
    .end local v13    # "strExpire":Ljava/lang/String;
    .end local v14    # "strRemain":Ljava/lang/String;
    .end local v15    # "tvSerial4":Landroid/widget/TextView;
    .end local v16    # "tvSerial7":Landroid/widget/TextView;
    .end local v17    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "btnClose":Landroid/widget/Button;
    .end local v19    # "currentDateandTime":Ljava/lang/String;
    .end local v22    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v26    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v27    # "tvSerial1":Landroid/widget/TextView;
    .end local v28    # "tvSerial6":Landroid/widget/TextView;
    .end local v29    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v30    # "window":Landroid/view/Window;
    :cond_269
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2ab

    .line 560
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v30

    .line 561
    .restart local v30    # "window":Landroid/view/Window;
    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v6, v2

    const-wide v8, 0x3feccccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v2, v6

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe6666666666666L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v6}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_105

    .line 562
    .end local v30    # "window":Landroid/view/Window;
    :cond_2ab
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2e1

    .line 563
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v30

    .line 564
    .restart local v30    # "window":Landroid/view/Window;
    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v6}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_105

    .line 566
    .end local v30    # "window":Landroid/view/Window;
    :cond_2e1
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v30

    .line 567
    .restart local v30    # "window":Landroid/view/Window;
    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v6, v2

    const-wide v8, 0x3feccccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v2, v6

    invoke-virtual/range {v30 .. v30}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe6666666666666L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v6}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_105

    .line 612
    .restart local v3    # "img_url":Ljava/lang/String;
    .restart local v4    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v15    # "tvSerial4":Landroid/widget/TextView;
    .restart local v16    # "tvSerial7":Landroid/widget/TextView;
    .restart local v18    # "btnClose":Landroid/widget/Button;
    .restart local v19    # "currentDateandTime":Ljava/lang/String;
    .restart local v22    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v26    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v27    # "tvSerial1":Landroid/widget/TextView;
    .restart local v28    # "tvSerial6":Landroid/widget/TextView;
    .restart local v29    # "tvShowTimeRedeem":Landroid/widget/TextView;
    :cond_314
    if-eqz p6, :cond_217

    const-string v2, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_217

    .line 613
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    move-object/from16 v0, p6

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_217

    .line 697
    .restart local v13    # "strExpire":Ljava/lang/String;
    .restart local v14    # "strRemain":Ljava/lang/String;
    :cond_334
    const-wide/16 v6, 0x0

    cmp-long v2, p4, v6

    if-gez v2, :cond_242

    .line 698
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_242

    .line 593
    .end local v3    # "img_url":Ljava/lang/String;
    .end local v13    # "strExpire":Ljava/lang/String;
    .end local v14    # "strRemain":Ljava/lang/String;
    :catch_341
    move-exception v2

    goto/16 :goto_1c1
.end method

.method public static showDialogSerial3TypeCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;)V
    .registers 71
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "pIntID"    # I
    .param p2, "pStrAgencyName"    # Ljava/lang/String;
    .param p3, "pStrName"    # Ljava/lang/String;
    .param p4, "plngExpireIn"    # J
    .param p6, "pStrSerial"    # Ljava/lang/String;
    .param p7, "pStrPrivilegeMessage"    # Ljava/lang/String;
    .param p8, "pImageFetcher"    # Lcom/bitmapfun/util/ImageFetcher;
    .param p9, "type"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 453
    :goto_6
    return-void

    .line 53
    :cond_7
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 55
    move-object/from16 v45, p7

    .line 71
    .local v45, "privilege_message_regen":Ljava/lang/String;
    new-instance v36, Landroid/app/Dialog;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 72
    .local v36, "dialogSerial":Landroid/app/Dialog;
    const/4 v3, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 73
    sget v3, Lic/buzzebeeslib/R$layout;->bz_dialog_serial_3_type_code:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 75
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v6, 0x3

    if-eq v3, v6, :cond_46

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v6, 0x4

    if-ne v3, v6, :cond_2ff

    .line 79
    :cond_46
    invoke-virtual/range {v36 .. v36}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v60

    .line 80
    .local v60, "window":Landroid/view/Window;
    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v6, v3

    const-wide v10, 0x3feccccccccccccdL

    mul-double/2addr v6, v10

    double-to-int v3, v6

    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide v10, 0x3fe6666666666666L

    mul-double/2addr v6, v10

    double-to-int v6, v6

    move-object/from16 v0, v60

    invoke-virtual {v0, v3, v6}, Landroid/view/Window;->setLayout(II)V

    .line 81
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :goto_82
    sget v3, Lic/buzzebeeslib/R$id;->imgCampaign:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 99
    .local v5, "imgCampaign":Landroid/widget/ImageView;
    sget v3, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    .line 100
    .local v50, "tvCampaignDesc":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->tvSerial1:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    .line 101
    .local v53, "tvSerial1":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->tvSerial4:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 102
    .local v14, "tvSerial4":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->tvSerial4_1:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/TextView;

    .line 103
    .local v54, "tvSerial4_1":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->tvSerial4_2:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/TextView;

    .line 104
    .local v55, "tvSerial4_2":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->tvSerial6:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    .line 109
    .local v56, "tvSerial6":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->imgBarcode:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 110
    .local v40, "imgBarcode":Landroid/widget/ImageView;
    sget v3, Lic/buzzebeeslib/R$id;->tvCodeSmall:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/TextView;

    .line 111
    .local v51, "tvCodeSmall":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->tvSerialSmall:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    .line 112
    .local v57, "tvSerialSmall":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->contentBarcode:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 114
    .local v15, "contentBarcode":Landroid/widget/LinearLayout;
    sget v3, Lic/buzzebeeslib/R$id;->imgQRcode:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageView;

    .line 115
    .local v41, "imgQRcode":Landroid/widget/ImageView;
    sget v3, Lic/buzzebeeslib/R$id;->tvQRSmall:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 116
    .local v52, "tvQRSmall":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->contentQRCode:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 119
    .local v16, "contentQRCode":Landroid/widget/LinearLayout;
    sget v3, Lic/buzzebeeslib/R$id;->btnSwithToBarcode:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 120
    .local v17, "btnSwithToBarcode":Landroid/widget/LinearLayout;
    sget v3, Lic/buzzebeeslib/R$id;->btnSwithToSerial:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 121
    .local v18, "btnSwithToSerial":Landroid/widget/LinearLayout;
    sget v3, Lic/buzzebeeslib/R$id;->btnSwithToQRCode:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 122
    .local v19, "btnSwithToQRCode":Landroid/widget/LinearLayout;
    sget v3, Lic/buzzebeeslib/R$id;->tvTitleTime:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 123
    .local v21, "tvTitleTime":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->tvTimeLeft:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 125
    .local v22, "tvSerial7":Landroid/widget/TextView;
    sget v3, Lic/buzzebeeslib/R$id;->layoutPrivilegeMessage:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/RelativeLayout;

    .line 126
    .local v44, "layoutPrivilegeMessage":Landroid/widget/RelativeLayout;
    sget v3, Lic/buzzebeeslib/R$id;->layout3Code:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/RelativeLayout;

    .line 127
    .local v43, "layout3Code":Landroid/widget/RelativeLayout;
    sget v3, Lic/buzzebeeslib/R$id;->webPrivilegeMessage:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/webkit/WebView;

    .line 129
    .local v59, "webPrivilegeMessage":Landroid/webkit/WebView;
    sget v3, Lic/buzzebeeslib/R$anim;->to_middle:I

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v27

    .line 130
    .local v27, "animation1":Landroid/view/animation/Animation;
    sget v3, Lic/buzzebeeslib/R$anim;->from_middle:I

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v31

    .line 132
    .local v31, "animation2":Landroid/view/animation/Animation;
    sget v3, Lic/buzzebeeslib/R$id;->btnClose:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/Button;

    .line 133
    .local v34, "btnClose":Landroid/widget/Button;
    sget v3, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/TextView;

    .line 134
    .local v58, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v47, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy HH:mm"

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 135
    .local v47, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v35

    .line 136
    .local v35, "currentDateandTime":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lic/buzzebeeslib/R$string;->campaign_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    sget v3, Lic/buzzebeeslib/R$id;->imgProcess:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 141
    .local v20, "imgProgress":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/DialogUtil;->loadImageAnimate(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 144
    :try_start_1d5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v6, "fonts/kit55p.ttf"

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v38

    .line 145
    .local v38, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v50

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 146
    move-object/from16 v0, v53

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    move-object/from16 v0, v54

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    move-object/from16 v0, v55

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    move-object/from16 v0, v56

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 151
    move-object/from16 v0, v51

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    move-object/from16 v0, v57

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 153
    move-object/from16 v0, v52

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    move-object/from16 v0, v58

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_225} :catch_562

    .line 163
    .end local v38    # "font":Landroid/graphics/Typeface;
    :goto_225
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v6, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/campaign/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/picture/modifydate="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "img_url":Ljava/lang/String;
    const/4 v6, 0x0

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v8, 0x0

    move-object/from16 v3, p8

    invoke-virtual/range {v3 .. v8}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    if-eqz v45, :cond_3cb

    const-string v3, ""

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3cb

    .line 171
    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    const/16 v3, 0x8

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    const-string v3, "&lt;"

    const-string v6, "<"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "&gt;"

    const-string v7, ">"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 176
    .local v49, "str_privilege_message":Ljava/lang/String;
    const-string v3, "<serial>"

    move-object/from16 v0, v49

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 178
    const-string v39, "<head><style>@font-face {font-family: \'verdana\';src: url(\'file:///android_asset/fonts/kit55p.ttf\');}body {font-family: \'verdana\';font-size:18pt;font-style:normal;}</style></head>"

    .line 179
    .local v39, "head":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "<html>"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "<body>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "</body></html>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "htmlData":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "text/html"

    const-string v10, "utf-8"

    const/4 v11, 0x0

    move-object/from16 v6, v59

    invoke-virtual/range {v6 .. v11}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .end local v8    # "htmlData":Ljava/lang/String;
    .end local v39    # "head":Ljava/lang/String;
    .end local v49    # "str_privilege_message":Ljava/lang/String;
    :goto_2d7
    new-instance v3, Lic/buzzebeeslib/util/DialogUtil$5;

    move-object/from16 v0, v36

    invoke-direct {v3, v0}, Lic/buzzebeeslib/util/DialogUtil$5;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    invoke-virtual/range {v36 .. v36}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v32

    .line 449
    .local v32, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    move-object/from16 v0, v32

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 450
    invoke-virtual/range {v36 .. v36}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 452
    invoke-virtual/range {v36 .. v36}, Landroid/app/Dialog;->show()V

    goto/16 :goto_6

    .line 82
    .end local v4    # "img_url":Ljava/lang/String;
    .end local v5    # "imgCampaign":Landroid/widget/ImageView;
    .end local v14    # "tvSerial4":Landroid/widget/TextView;
    .end local v15    # "contentBarcode":Landroid/widget/LinearLayout;
    .end local v16    # "contentQRCode":Landroid/widget/LinearLayout;
    .end local v17    # "btnSwithToBarcode":Landroid/widget/LinearLayout;
    .end local v18    # "btnSwithToSerial":Landroid/widget/LinearLayout;
    .end local v19    # "btnSwithToQRCode":Landroid/widget/LinearLayout;
    .end local v20    # "imgProgress":Landroid/widget/ImageView;
    .end local v21    # "tvTitleTime":Landroid/widget/TextView;
    .end local v22    # "tvSerial7":Landroid/widget/TextView;
    .end local v27    # "animation1":Landroid/view/animation/Animation;
    .end local v31    # "animation2":Landroid/view/animation/Animation;
    .end local v32    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v34    # "btnClose":Landroid/widget/Button;
    .end local v35    # "currentDateandTime":Ljava/lang/String;
    .end local v40    # "imgBarcode":Landroid/widget/ImageView;
    .end local v41    # "imgQRcode":Landroid/widget/ImageView;
    .end local v43    # "layout3Code":Landroid/widget/RelativeLayout;
    .end local v44    # "layoutPrivilegeMessage":Landroid/widget/RelativeLayout;
    .end local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v50    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v51    # "tvCodeSmall":Landroid/widget/TextView;
    .end local v52    # "tvQRSmall":Landroid/widget/TextView;
    .end local v53    # "tvSerial1":Landroid/widget/TextView;
    .end local v54    # "tvSerial4_1":Landroid/widget/TextView;
    .end local v55    # "tvSerial4_2":Landroid/widget/TextView;
    .end local v56    # "tvSerial6":Landroid/widget/TextView;
    .end local v57    # "tvSerialSmall":Landroid/widget/TextView;
    .end local v58    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v59    # "webPrivilegeMessage":Landroid/webkit/WebView;
    .end local v60    # "window":Landroid/view/Window;
    :cond_2ff
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v6, 0x2

    if-ne v3, v6, :cond_34c

    .line 83
    invoke-virtual/range {v36 .. v36}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v60

    .line 84
    .restart local v60    # "window":Landroid/view/Window;
    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v6, v3

    const-wide v10, 0x3feccccccccccccdL

    mul-double/2addr v6, v10

    double-to-int v3, v6

    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide v10, 0x3fe6666666666666L

    mul-double/2addr v6, v10

    double-to-int v6, v6

    move-object/from16 v0, v60

    invoke-virtual {v0, v3, v6}, Landroid/view/Window;->setLayout(II)V

    .line 85
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_82

    .line 86
    .end local v60    # "window":Landroid/view/Window;
    :cond_34c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v6, 0x1

    if-ne v3, v6, :cond_38d

    .line 87
    invoke-virtual/range {v36 .. v36}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v60

    .line 88
    .restart local v60    # "window":Landroid/view/Window;
    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v60

    invoke-virtual {v0, v3, v6}, Landroid/view/Window;->setLayout(II)V

    .line 89
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_82

    .line 91
    .end local v60    # "window":Landroid/view/Window;
    :cond_38d
    invoke-virtual/range {v36 .. v36}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v60

    .line 92
    .restart local v60    # "window":Landroid/view/Window;
    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v6, v3

    const-wide v10, 0x3feccccccccccccdL

    mul-double/2addr v6, v10

    double-to-int v3, v6

    invoke-virtual/range {v60 .. v60}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-double v6, v6

    const-wide v10, 0x3fe6666666666666L

    mul-double/2addr v6, v10

    double-to-int v6, v6

    move-object/from16 v0, v60

    invoke-virtual {v0, v3, v6}, Landroid/view/Window;->setLayout(II)V

    .line 93
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v60

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_82

    .line 182
    .restart local v4    # "img_url":Ljava/lang/String;
    .restart local v5    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v14    # "tvSerial4":Landroid/widget/TextView;
    .restart local v15    # "contentBarcode":Landroid/widget/LinearLayout;
    .restart local v16    # "contentQRCode":Landroid/widget/LinearLayout;
    .restart local v17    # "btnSwithToBarcode":Landroid/widget/LinearLayout;
    .restart local v18    # "btnSwithToSerial":Landroid/widget/LinearLayout;
    .restart local v19    # "btnSwithToQRCode":Landroid/widget/LinearLayout;
    .restart local v20    # "imgProgress":Landroid/widget/ImageView;
    .restart local v21    # "tvTitleTime":Landroid/widget/TextView;
    .restart local v22    # "tvSerial7":Landroid/widget/TextView;
    .restart local v27    # "animation1":Landroid/view/animation/Animation;
    .restart local v31    # "animation2":Landroid/view/animation/Animation;
    .restart local v34    # "btnClose":Landroid/widget/Button;
    .restart local v35    # "currentDateandTime":Ljava/lang/String;
    .restart local v40    # "imgBarcode":Landroid/widget/ImageView;
    .restart local v41    # "imgQRcode":Landroid/widget/ImageView;
    .restart local v43    # "layout3Code":Landroid/widget/RelativeLayout;
    .restart local v44    # "layoutPrivilegeMessage":Landroid/widget/RelativeLayout;
    .restart local v47    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v50    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v51    # "tvCodeSmall":Landroid/widget/TextView;
    .restart local v52    # "tvQRSmall":Landroid/widget/TextView;
    .restart local v53    # "tvSerial1":Landroid/widget/TextView;
    .restart local v54    # "tvSerial4_1":Landroid/widget/TextView;
    .restart local v55    # "tvSerial4_2":Landroid/widget/TextView;
    .restart local v56    # "tvSerial6":Landroid/widget/TextView;
    .restart local v57    # "tvSerialSmall":Landroid/widget/TextView;
    .restart local v58    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .restart local v59    # "webPrivilegeMessage":Landroid/webkit/WebView;
    :cond_3cb
    if-eqz p6, :cond_3f7

    const-string v3, ""

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f7

    .line 183
    const/4 v3, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    move-object/from16 v0, p6

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, v54

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    move-object/from16 v0, v55

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    move-object/from16 v0, v56

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_3f7
    :try_start_3f7
    const-string v3, "CODE_128"

    move-object/from16 v0, p6

    move-object/from16 v1, v40

    invoke-static {v3, v0, v1}, Lic/buzzebeeslib/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v42

    .line 194
    .local v42, "intent":Landroid/content/Intent;
    new-instance v46, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;

    const/16 v3, 0x1f4

    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2, v3, v6}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_40f
    .catch Ljava/lang/Exception; {:try_start_3f7 .. :try_end_40f} :catch_4c9

    .line 197
    .local v46, "qrcode":Lic/buzzebeeslib/util/zxing/QRCodeEncoder;
    :try_start_40f
    invoke-virtual/range {v46 .. v46}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v33

    .line 198
    .local v33, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_41a
    .catch Lcom/google/zxing/WriterException; {:try_start_40f .. :try_end_41a} :catch_4ae
    .catch Ljava/lang/Exception; {:try_start_40f .. :try_end_41a} :catch_4c9

    .line 207
    .end local v33    # "bitmap":Landroid/graphics/Bitmap;
    .end local v42    # "intent":Landroid/content/Intent;
    .end local v46    # "qrcode":Lic/buzzebeeslib/util/zxing/QRCodeEncoder;
    :goto_41a
    :try_start_41a
    const-string v3, "QR_CODE"

    move-object/from16 v0, p6

    move-object/from16 v1, v41

    invoke-static {v3, v0, v1}, Lic/buzzebeeslib/util/DialogUtil;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v42

    .line 208
    .restart local v42    # "intent":Landroid/content/Intent;
    new-instance v46, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;

    const/16 v3, 0x1f4

    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2, v3, v6}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_432
    .catch Ljava/lang/Exception; {:try_start_41a .. :try_end_432} :catch_4ff

    .line 211
    .restart local v46    # "qrcode":Lic/buzzebeeslib/util/zxing/QRCodeEncoder;
    :try_start_432
    invoke-virtual/range {v46 .. v46}, Lic/buzzebeeslib/util/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v33

    .line 212
    .restart local v33    # "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_43d
    .catch Lcom/google/zxing/WriterException; {:try_start_432 .. :try_end_43d} :catch_4e4
    .catch Ljava/lang/Exception; {:try_start_432 .. :try_end_43d} :catch_4ff

    .line 220
    .end local v33    # "bitmap":Landroid/graphics/Bitmap;
    .end local v42    # "intent":Landroid/content/Intent;
    .end local v46    # "qrcode":Lic/buzzebeeslib/util/zxing/QRCodeEncoder;
    :goto_43d
    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_time:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 221
    .local v48, "strRemain":Ljava/lang/String;
    sget v3, Lic/buzzebeeslib/R$string;->purchasing_this_serial_is_expired:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 222
    .local v13, "strExpire":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v3, p4, v6

    if-lez v3, :cond_51a

    .line 223
    new-instance v9, Lic/buzzebeeslib/util/DialogUtil$1;

    move-object/from16 v10, p0

    move-wide/from16 v11, p4

    invoke-direct/range {v9 .. v22}, Lic/buzzebeeslib/util/DialogUtil$1;-><init>(Landroid/app/Activity;JLjava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 298
    .local v9, "runnable":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 314
    .end local v9    # "runnable":Ljava/lang/Runnable;
    :goto_464
    new-instance v23, Lic/buzzebeeslib/util/DialogUtil$2;

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v28, v14

    move-object/from16 v29, v16

    move-object/from16 v30, v15

    invoke-direct/range {v23 .. v31}, Lic/buzzebeeslib/util/DialogUtil$2;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    new-instance v23, Lic/buzzebeeslib/util/DialogUtil$3;

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v28, v15

    move-object/from16 v29, v16

    move-object/from16 v30, v14

    invoke-direct/range {v23 .. v31}, Lic/buzzebeeslib/util/DialogUtil$3;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    new-instance v23, Lic/buzzebeeslib/util/DialogUtil$4;

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    move-object/from16 v26, v19

    move-object/from16 v28, v15

    move-object/from16 v29, v14

    move-object/from16 v30, v16

    invoke-direct/range {v23 .. v31}, Lic/buzzebeeslib/util/DialogUtil$4;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2d7

    .line 199
    .end local v13    # "strExpire":Ljava/lang/String;
    .end local v48    # "strRemain":Ljava/lang/String;
    .restart local v42    # "intent":Landroid/content/Intent;
    .restart local v46    # "qrcode":Lic/buzzebeeslib/util/zxing/QRCodeEncoder;
    :catch_4ae
    move-exception v37

    .line 200
    .local v37, "e":Lcom/google/zxing/WriterException;
    :try_start_4af
    const-string v3, "ZXING"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(WriterException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c7
    .catch Ljava/lang/Exception; {:try_start_4af .. :try_end_4c7} :catch_4c9

    goto/16 :goto_41a

    .line 202
    .end local v37    # "e":Lcom/google/zxing/WriterException;
    .end local v42    # "intent":Landroid/content/Intent;
    .end local v46    # "qrcode":Lic/buzzebeeslib/util/zxing/QRCodeEncoder;
    :catch_4c9
    move-exception v37

    .line 203
    .local v37, "e":Ljava/lang/Exception;
    const-string v3, "ZXING"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(Exception):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_41a

    .line 213
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v42    # "intent":Landroid/content/Intent;
    .restart local v46    # "qrcode":Lic/buzzebeeslib/util/zxing/QRCodeEncoder;
    :catch_4e4
    move-exception v37

    .line 214
    .local v37, "e":Lcom/google/zxing/WriterException;
    :try_start_4e5
    const-string v3, "ZXING"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(WriterException):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4fd
    .catch Ljava/lang/Exception; {:try_start_4e5 .. :try_end_4fd} :catch_4ff

    goto/16 :goto_43d

    .line 216
    .end local v37    # "e":Lcom/google/zxing/WriterException;
    .end local v42    # "intent":Landroid/content/Intent;
    .end local v46    # "qrcode":Lic/buzzebeeslib/util/zxing/QRCodeEncoder;
    :catch_4ff
    move-exception v37

    .line 217
    .local v37, "e":Ljava/lang/Exception;
    const-string v3, "ZXING"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(Exception):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43d

    .line 300
    .end local v37    # "e":Ljava/lang/Exception;
    .restart local v13    # "strExpire":Ljava/lang/String;
    .restart local v48    # "strRemain":Ljava/lang/String;
    :cond_51a
    const-wide/16 v6, 0x0

    cmp-long v3, p4, v6

    if-gez v3, :cond_553

    .line 301
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    const/16 v3, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_464

    .line 310
    :cond_553
    sget v3, Lic/buzzebeeslib/R$id;->contentTime:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_464

    .line 156
    .end local v4    # "img_url":Ljava/lang/String;
    .end local v13    # "strExpire":Ljava/lang/String;
    .end local v48    # "strRemain":Ljava/lang/String;
    :catch_562
    move-exception v3

    goto/16 :goto_225
.end method

.method public static showDialogSerialGift(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJLcom/bitmapfun/util/ImageFetcher;)V
    .registers 44
    .param p0, "activityContext"    # Landroid/app/Activity;
    .param p1, "pStrID"    # Ljava/lang/String;
    .param p2, "pStrAgencyName"    # Ljava/lang/String;
    .param p3, "pStrName"    # Ljava/lang/String;
    .param p4, "pLngExpireIn"    # J
    .param p6, "pStrSerial"    # Ljava/lang/String;
    .param p7, "pStrPrivilegeMessage"    # Ljava/lang/String;
    .param p8, "server_time"    # J
    .param p10, "local_time"    # J
    .param p12, "pImageFetcher"    # Lcom/bitmapfun/util/ImageFetcher;

    .prologue
    .line 722
    sget-object v2, Lic/buzzebeeslib/util/DialogUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "showDialogSerialGift|pStrSerial |"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pStrPrivilegeMessage |"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 725
    .local v26, "strserver_time":Ljava/lang/String;
    const-string v2, "DialogUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "server_time("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "dd MMM yyyy HH:mm"

    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 728
    .local v25, "strlocal_time":Ljava/lang/String;
    const-string v2, "DialogUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "local_time("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p10

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    new-instance v19, Landroid/app/Dialog;

    const v2, 0x1030010

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 733
    .local v19, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 734
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_serial_gift:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 735
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 738
    sget v2, Lic/buzzebeeslib/R$idDialogSerial;->layoutHeader:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 739
    .local v23, "layoutHeader":Landroid/widget/RelativeLayout;
    sget v2, Lic/buzzebeeslib/R$idDialogSerial;->imgCampaign:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 740
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$idDialogSerial;->tvCampaign:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 741
    .local v27, "tvCampaign":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idDialogSerial;->tvSerial:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 742
    .local v15, "tvSerial":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idDialogSerial;->tvPrivilegeMessage:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 743
    .local v30, "tvPrivilegeMessage":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idDialogSerial;->tvDateTime:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 744
    .local v16, "tvDateTime":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idDialogSerial;->imgClose:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 745
    .local v21, "imgClose":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$idDialogSerial;->imgHistory:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 746
    .local v22, "imgHistory":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$idDialogSerial;->tvClose:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 747
    .local v28, "tvClose":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$idDialogSerial;->tvHistory:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 750
    .local v29, "tvHistory":Landroid/widget/TextView;
    :try_start_11d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v6, "fonts/kit55p.ttf"

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v20

    .line 751
    .local v20, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 752
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 753
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 754
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 755
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_14a} :catch_250

    .line 760
    .end local v20    # "font":Landroid/graphics/Typeface;
    :goto_14a
    const/4 v2, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 761
    const/4 v2, 0x4

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lic/buzzebeeslib/R$color;->cat_all:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 765
    .local v18, "color":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lic/buzzebeeslib/R$color;->cat_all:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 766
    sget v2, Lic/buzzebeeslib/R$drawable;->bz_back_info_6:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 768
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v6, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/campaign/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/picture"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 772
    .local v3, "img_campaign":Ljava/lang/String;
    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    move-object/from16 v2, p12

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 775
    const-string v2, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1eb

    .line 776
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    move-object/from16 v24, p7

    .line 780
    .local v24, "str_privilege_message":Ljava/lang/String;
    const-string v2, "<serial>"

    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 781
    invoke-static/range {v24 .. v24}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    .end local v24    # "str_privilege_message":Ljava/lang/String;
    :cond_1eb
    sget v2, Lic/buzzebeeslib/R$string;->campaign_redeem_error_remain:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 790
    .local v14, "strRemain":Ljava/lang/String;
    sget v2, Lic/buzzebeeslib/R$string;->campaign_redeem_error_expire:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 792
    .local v13, "strExpire":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v2, p4, v6

    if-lez v2, :cond_23d

    .line 793
    new-instance v5, Lic/buzzebeeslib/util/DialogUtil$9;

    move-object/from16 v6, p0

    move-wide/from16 v7, p8

    move-wide/from16 v9, p4

    move-wide/from16 v11, p10

    invoke-direct/range {v5 .. v16}, Lic/buzzebeeslib/util/DialogUtil$9;-><init>(Landroid/app/Activity;JJJLjava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 862
    .local v5, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 869
    .end local v5    # "runnable":Ljava/lang/Runnable;
    :goto_216
    new-instance v2, Lic/buzzebeeslib/util/DialogUtil$10;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lic/buzzebeeslib/util/DialogUtil$10;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 877
    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    .line 878
    .local v17, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x11

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 879
    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 881
    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->show()V

    .line 882
    return-void

    .line 863
    .end local v17    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    :cond_23d
    const-wide/16 v6, 0x0

    cmp-long v2, p4, v6

    if-nez v2, :cond_24a

    .line 864
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_216

    .line 866
    :cond_24a
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_216

    .line 756
    .end local v3    # "img_campaign":Ljava/lang/String;
    .end local v13    # "strExpire":Ljava/lang/String;
    .end local v14    # "strRemain":Ljava/lang/String;
    .end local v18    # "color":I
    :catch_250
    move-exception v2

    goto/16 :goto_14a
.end method
