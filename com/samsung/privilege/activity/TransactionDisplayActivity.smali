.class public Lcom/samsung/privilege/activity/TransactionDisplayActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TransactionDisplayActivity.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Z

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/TransactionDisplayActivity;ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .registers 7

    .prologue
    .line 123
    const-string/jumbo v0, ""

    .line 124
    if-eqz p1, :cond_60

    .line 125
    const-string/jumbo v0, "CODE_128"

    .line 128
    :try_start_8
    iget-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->b:Landroid/widget/ImageView;

    invoke-static {v0, p2, v1}, Lcom/samsung/privilege/util/BarcodeUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_40

    .line 131
    :try_start_16
    invoke-virtual {v1}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1f
    .catch Lcom/google/zxing/WriterException; {:try_start_16 .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_40

    .line 155
    :goto_1f
    return-void

    .line 133
    :catch_20
    move-exception v0

    .line 134
    :try_start_21
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(WriterException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3f} :catch_40

    goto :goto_1f

    .line 136
    :catch_40
    move-exception v0

    .line 137
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 140
    :cond_60
    const-string/jumbo v0, "QR_CODE"

    .line 143
    :try_start_63
    iget-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->b:Landroid/widget/ImageView;

    invoke-static {v0, p2, v1}, Lcom/samsung/privilege/util/BarcodeUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    new-instance v1, Lcom/bzbs/zxing/QRCodeEncoder;

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/bzbs/zxing/QRCodeEncoder;-><init>(Landroid/app/Activity;Landroid/content/Intent;IZ)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_71} :catch_9b

    .line 146
    :try_start_71
    invoke-virtual {v1}, Lcom/bzbs/zxing/QRCodeEncoder;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_7a
    .catch Lcom/google/zxing/WriterException; {:try_start_71 .. :try_end_7a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7a} :catch_9b

    goto :goto_1f

    .line 148
    :catch_7b
    move-exception v0

    .line 149
    :try_start_7c
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(WriterException):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_9a} :catch_9b

    goto :goto_1f

    .line 151
    :catch_9b
    move-exception v0

    .line 152
    const-string/jumbo v1, "ZXING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/TransactionDisplayActivity;Z)Z
    .registers 2

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->e:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->d:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15

    .prologue
    const/4 v12, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f04004e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f050032

    invoke-virtual {p0, v0, v12}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->overridePendingTransition(II)V

    .line 40
    const v0, 0x7f1001ec

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    const v1, 0x7f1001ee

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    const v2, 0x7f10014d

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->a:Landroid/widget/RelativeLayout;

    .line 43
    const v2, 0x7f1001eb

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->b:Landroid/widget/ImageView;

    .line 44
    const v2, 0x7f1001ef

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 45
    const v3, 0x7f1001ed

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 47
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 48
    const-string/jumbo v5, "Issuer"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    const-string/jumbo v6, "TransactionId"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    const-string/jumbo v7, "Message"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 52
    const-string/jumbo v8, "Refund"

    const-string/jumbo v9, "View Refund"

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9, v5, v10}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    if-eqz v6, :cond_de

    const-string/jumbo v5, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_de

    .line 55
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_81
    if-eqz v7, :cond_e3

    const-string/jumbo v5, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e3

    .line 62
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_92
    new-instance v1, Lcom/samsung/privilege/activity/TransactionDisplayActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity$1;-><init>(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f05003a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->d:Landroid/view/animation/Animation;

    .line 76
    const v1, 0x7f05001a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->e:Landroid/view/animation/Animation;

    .line 77
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v12, v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->a(ZLjava/lang/String;)V

    .line 78
    new-instance v1, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;-><init>(Lcom/samsung/privilege/activity/TransactionDisplayActivity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet Refund "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Issuer"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 114
    return-void

    .line 58
    :cond_de
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_81

    .line 65
    :cond_e3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_92
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 119
    const/4 v0, 0x0

    const v1, 0x7f050035

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->overridePendingTransition(II)V

    .line 120
    return-void
.end method
