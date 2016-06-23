.class public Lcom/samsung/privilege/util/SkipLoginUtil;
.super Ljava/lang/Object;
.source "SkipLoginUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/samsung/privilege/util/SkipLoginUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/SkipLoginUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/privilege/util/SkipLoginUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Handler;

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/SkipLoginUtil;->processJsonAuth(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public static doLoginDeviceSkip(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 19
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 37
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetLastResumeTime(Landroid/content/Context;)J

    move-result-wide v12

    .line 39
    .local v12, "lastResumeTime":J
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 40
    .local v9, "date":Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v12

    const-wide/16 v4, 0x3e8

    div-long v10, v2, v4

    .line 42
    .local v10, "difftime":J
    sget v2, Lcom/bzbs/data/AppSetting;->RESUME_TIME:I

    int-to-long v2, v2

    cmp-long v2, v10, v2

    if-gtz v2, :cond_1f

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-nez v2, :cond_89

    .line 43
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/auth/device_login"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 44
    .local v16, "url":Ljava/lang/String;
    sget-object v2, Lcom/samsung/privilege/util/SkipLoginUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v8, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v8}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 47
    .local v8, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 48
    .local v14, "startTime":J
    const/4 v4, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/samsung/privilege/util/DialogLoginGift;->getLoginParams(Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/util/SkipLoginUtil$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v14, v15, v0, v1}, Lcom/samsung/privilege/util/SkipLoginUtil$1;-><init>(JLandroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 84
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 85
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/bzbs/data/UserLogin;->SetLastResumeTime(Landroid/content/Context;J)Z

    .line 87
    .end local v8    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v14    # "startTime":J
    .end local v16    # "url":Ljava/lang/String;
    :cond_89
    return-void
.end method

.method private static processJsonAuth(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p0, "response_text"    # Ljava/lang/String;
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 90
    new-instance v0, Lcom/samsung/privilege/util/SkipLoginUtil$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/privilege/util/SkipLoginUtil$2;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method

.method public static showDialogMessage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 8
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "objHandler"    # Landroid/os/Handler;

    .prologue
    .line 237
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 238
    new-instance v1, Landroid/app/Dialog;

    const v4, 0x1030010

    invoke-direct {v1, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 240
    .local v1, "dialog":Landroid/app/Dialog;
    const v4, 0x7f04010b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 242
    const v4, 0x7f100152

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    .local v3, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const v4, 0x7f100156

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 247
    .local v2, "layoutClose":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/util/SkipLoginUtil$3;

    invoke-direct {v4, v1}, Lcom/samsung/privilege/util/SkipLoginUtil$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 256
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 257
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 259
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 261
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "layoutClose":Landroid/widget/RelativeLayout;
    .end local v3    # "tvMessage":Landroid/widget/TextView;
    :cond_4a
    return-void
.end method
