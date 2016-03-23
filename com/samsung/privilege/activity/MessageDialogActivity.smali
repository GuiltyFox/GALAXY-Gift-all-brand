.class public Lcom/samsung/privilege/activity/MessageDialogActivity;
.super Landroid/app/Activity;
.source "MessageDialogActivity.java"


# instance fields
.field private paramMessageGCM:Lcom/bzbs/bean/MessageGCM;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/MessageDialogActivity;)Lcom/bzbs/bean/MessageGCM;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MessageDialogActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity;->paramMessageGCM:Lcom/bzbs/bean/MessageGCM;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/MessageDialogActivity;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MessageDialogActivity;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MessageDialogActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/MessageGCM;

    iput-object v1, p0, Lcom/samsung/privilege/activity/MessageDialogActivity;->paramMessageGCM:Lcom/bzbs/bean/MessageGCM;

    .line 58
    return-void
.end method

.method private showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_72

    .line 62
    new-instance v1, Landroid/app/Dialog;

    const v7, 0x1030010

    invoke-direct {v1, p1, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 64
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const v7, 0x7f040108

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 66
    const v7, 0x7f1000b6

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 67
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v7, 0x7f100151

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 68
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v7, 0x7f100259

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 69
    .local v3, "imgClose":Landroid/widget/ImageView;
    const v7, 0x7f100156

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 71
    .local v4, "tvClose":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 72
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v7, Lcom/samsung/privilege/activity/MessageDialogActivity$2;

    invoke-direct {v7, p0, v1}, Lcom/samsung/privilege/activity/MessageDialogActivity$2;-><init>(Lcom/samsung/privilege/activity/MessageDialogActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 86
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 87
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 91
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogSerial":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgClose":Landroid/widget/ImageView;
    .end local v4    # "tvClose":Landroid/widget/TextView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    :cond_72
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v2, 0x7f040038

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MessageDialogActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->initialParam()V

    .line 32
    new-instance v2, Lcom/samsung/privilege/activity/MessageDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MessageDialogActivity$1;-><init>(Lcom/samsung/privilege/activity/MessageDialogActivity;)V

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MessageDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_noti"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    .local v0, "is_from_noti":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3b

    .line 43
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "messageGCM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/MessageGCM;

    .line 44
    .local v1, "messageGCM":Lcom/bzbs/bean/MessageGCM;
    if-eqz v1, :cond_3b

    .line 45
    const-string/jumbo v2, "Push Notification"

    const-string/jumbo v3, "Click Badge"

    invoke-static {v2, v3}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .end local v1    # "messageGCM":Lcom/bzbs/bean/MessageGCM;
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
