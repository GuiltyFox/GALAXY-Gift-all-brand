.class public Lcom/samsung/privilege/activity/TransactionDisplayActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TransactionDisplayActivity.java"


# instance fields
.field private animation1:Landroid/view/animation/Animation;

.field private animation2:Landroid/view/animation/Animation;

.field private contentCode:Landroid/widget/RelativeLayout;

.field private imgBarcode:Landroid/widget/ImageView;

.field private isBarcode:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->isBarcode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->isBarcode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/privilege/activity/TransactionDisplayActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/TransactionDisplayActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->isBarcode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/TransactionDisplayActivity;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/TransactionDisplayActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->swithImageCode(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->imgBarcode:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/view/animation/Animation;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->animation2:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/view/animation/Animation;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->animation1:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;
    .registers 6
    .param p0, "barcode_type"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "imgBarcode"    # Landroid/widget/ImageView;

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.google.zxing.client.android.ENCODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AZTEC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 162
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    :goto_24
    const-string/jumbo v1, "ENCODE_TYPE"

    const-string/jumbo v2, "TEXT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string/jumbo v1, "ENCODE_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    return-object v0

    .line 163
    :cond_34
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODABAR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 164
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 166
    :cond_53
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 167
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 169
    :cond_72
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_93"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 170
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_24

    .line 172
    :cond_91
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CODE_128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 173
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 175
    :cond_b1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DATA_MATRIX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 176
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 177
    :cond_cc
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 178
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 179
    :cond_e7
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EAN_13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 180
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 181
    :cond_102
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ITF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 182
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 183
    :cond_11d
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MAXICODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 184
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 185
    :cond_138
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PDF_417"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    .line 186
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 187
    :cond_153
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "QR_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    .line 188
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_24

    .line 190
    :cond_173
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 191
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 192
    :cond_18e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RSS_EXPANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9

    .line 193
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 194
    :cond_1a9
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 195
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 196
    :cond_1c4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1df

    .line 197
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 198
    :cond_1df
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UPC_EAN_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fa

    .line 199
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24

    .line 201
    :cond_1fa
    const-string/jumbo v1, "ENCODE_FORMAT"

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_24
.end method

.method private swithImageCode(ZLjava/lang/String;)V
    .registers 11
    .param p1, "isBarcode"    # Z
    .param p2, "serial"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string/jumbo v0, ""

    .line 124
    .local v0, "barcode_type":Ljava/lang/String;
    if-eqz p1, :cond_60

    .line 125
    const-string/jumbo v0, "CODE_128"

    .line 128
    :try_start_8
    iget-object v5, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->imgBarcode:Landroid/widget/ImageView;

    invoke-static {v0, p2, v5}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v3

    .line 129
    .local v3, "intent":Landroid/content/Intent;
    new-instance v4, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v5, 0x1f4

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_40

    .line 131
    .local v4, "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :try_start_16
    invoke-virtual {v4}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 132
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->imgBarcode:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1f
    .catch Lcom/google/zxing/WriterException; {:try_start_16 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_40

    .line 156
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :goto_1f
    return-void

    .line 133
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :catch_20
    move-exception v2

    .line 134
    .local v2, "e":Lcom/google/zxing/WriterException;
    :try_start_21
    const-string/jumbo v5, "ZXING"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(WriterException):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3f} :catch_40

    goto :goto_1f

    .line 136
    .end local v2    # "e":Lcom/google/zxing/WriterException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :catch_40
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ZXING"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(Exception):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 141
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_60
    const-string/jumbo v0, "QR_CODE"

    .line 144
    :try_start_63
    iget-object v5, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->imgBarcode:Landroid/widget/ImageView;

    invoke-static {v0, p2, v5}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->genIntentForXZing(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v3

    .line 145
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v4, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v5, 0x1f4

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_71} :catch_9b

    .line 147
    .restart local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :try_start_71
    invoke-virtual {v4}, Lcom/bzbs/zxing/QRCodeEncoder;->encodeAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 148
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->imgBarcode:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_7a
    .catch Lcom/google/zxing/WriterException; {:try_start_71 .. :try_end_7a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7a} :catch_9b

    goto :goto_1f

    .line 149
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_7b
    move-exception v2

    .line 150
    .local v2, "e":Lcom/google/zxing/WriterException;
    :try_start_7c
    const-string/jumbo v5, "ZXING"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(WriterException):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_9a} :catch_9b

    goto :goto_1f

    .line 152
    .end local v2    # "e":Lcom/google/zxing/WriterException;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "qrcode":Lcom/bzbs/zxing/QRCodeEncoder;
    :catch_9b
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ZXING"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(Exception):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v7, 0x7f04004f

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->setContentView(I)V

    .line 41
    const v7, 0x7f050040

    invoke-virtual {p0, v7, v8}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->overridePendingTransition(II)V

    .line 43
    const v7, 0x7f1001c7

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 44
    .local v4, "tvTransactionID":Landroid/widget/TextView;
    const v7, 0x7f1001c9

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 45
    .local v5, "tvTransactionMsg":Landroid/widget/TextView;
    const v7, 0x7f10013d

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->contentCode:Landroid/widget/RelativeLayout;

    .line 46
    const v7, 0x7f100159

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->imgBarcode:Landroid/widget/ImageView;

    .line 47
    const v7, 0x7f1001ca

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 48
    .local v0, "btnOK":Landroid/widget/Button;
    const v7, 0x7f1001c8

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 50
    .local v6, "viewBarcode":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "TransactionId"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "strId":Ljava/lang/String;
    const-string/jumbo v7, "Message"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "strMsg":Ljava/lang/String;
    if-eqz v2, :cond_c8

    const-string/jumbo v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c8

    .line 55
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_6b
    if-eqz v3, :cond_cd

    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cd

    .line 62
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_7c
    new-instance v7, Lcom/samsung/privilege/activity/TransactionDisplayActivity$1;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity$1;-><init>(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v7, 0x7f050049

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->animation1:Landroid/view/animation/Animation;

    .line 76
    const v7, 0x7f050023

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->animation2:Landroid/view/animation/Animation;

    .line 77
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v8, v7}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->swithImageCode(ZLjava/lang/String;)V

    .line 78
    new-instance v7, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    invoke-direct {v7, p0, v4}, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;-><init>(Lcom/samsung/privilege/activity/TransactionDisplayActivity;Landroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Wallet Refund "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Issuer"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 114
    return-void

    .line 58
    :cond_c8
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6b

    .line 65
    :cond_cd
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7c
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 119
    const/4 v0, 0x0

    const v1, 0x7f050044

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->overridePendingTransition(II)V

    .line 120
    return-void
.end method
