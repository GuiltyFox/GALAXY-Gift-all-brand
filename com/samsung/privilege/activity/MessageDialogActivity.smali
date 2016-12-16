.class public Lcom/samsung/privilege/activity/MessageDialogActivity;
.super Landroid/app/Activity;
.source "MessageDialogActivity.java"


# instance fields
.field private a:Lcom/bzbs/bean/MessageGCM;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MessageDialogActivity;)Lcom/bzbs/bean/MessageGCM;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity;->a:Lcom/bzbs/bean/MessageGCM;

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;

    iput-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity;->a:Lcom/bzbs/bean/MessageGCM;

    .line 58
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_72

    .line 62
    new-instance v4, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v4, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 64
    const v0, 0x7f040117

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 66
    const v0, 0x7f1000b5

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    const v1, 0x7f100169

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    const v2, 0x7f1002b8

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 69
    const v3, 0x7f10016e

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 72
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v0, Lcom/samsung/privilege/activity/MessageDialogActivity$2;

    invoke-direct {v0, p0, v4}, Lcom/samsung/privilege/activity/MessageDialogActivity$2;-><init>(Lcom/samsung/privilege/activity/MessageDialogActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 86
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 87
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 91
    :cond_72
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MessageDialogActivity;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MessageDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->a()V

    .line 32
    new-instance v0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MessageDialogActivity$1;-><init>(Lcom/samsung/privilege/activity/MessageDialogActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    .line 43
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;

    .line 44
    if-eqz v0, :cond_3b

    .line 45
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "Click Badge"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_3b
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    return-void
.end method
