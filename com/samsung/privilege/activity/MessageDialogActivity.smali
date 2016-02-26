.class public Lcom/samsung/privilege/activity/MessageDialogActivity;
.super Landroid/app/Activity;
.source "MessageDialogActivity.java"


# instance fields
.field private paramMessageGCM:Lcom/samsung/privilege/bean/MessageGCM;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MessageDialogActivity;)Lcom/samsung/privilege/bean/MessageGCM;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/privilege/activity/MessageDialogActivity;->paramMessageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MessageDialogActivity;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MessageDialogActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MessageGCM;

    iput-object v1, p0, Lcom/samsung/privilege/activity/MessageDialogActivity;->paramMessageGCM:Lcom/samsung/privilege/bean/MessageGCM;

    .line 50
    return-void
.end method

.method private showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_72

    .line 55
    new-instance v1, Landroid/app/Dialog;

    const v7, 0x1030010

    invoke-direct {v1, p1, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 57
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const v7, 0x7f0300e0

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 59
    const v7, 0x7f480002

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 60
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v7, 0x7f480004

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 61
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v7, 0x7f480005

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 62
    .local v3, "imgClose":Landroid/widget/ImageView;
    const v7, 0x7f480006

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 64
    .local v4, "tvClose":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 65
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 66
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 69
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v7, Lcom/samsung/privilege/activity/MessageDialogActivity$2;

    invoke-direct {v7, p0, v1}, Lcom/samsung/privilege/activity/MessageDialogActivity$2;-><init>(Lcom/samsung/privilege/activity/MessageDialogActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 79
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 80
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 82
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 85
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
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030106

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->initialParam()V

    .line 30
    new-instance v0, Lcom/samsung/privilege/activity/MessageDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MessageDialogActivity$1;-><init>(Lcom/samsung/privilege/activity/MessageDialogActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MessageDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method
