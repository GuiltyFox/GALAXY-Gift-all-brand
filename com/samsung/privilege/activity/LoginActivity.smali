.class public Lcom/samsung/privilege/activity/LoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private gDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private objFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 56
    const-class v0, Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private GetProfileData()V
    .registers 6

    .prologue
    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/profile/me/user?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetProfileData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 569
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/LoginActivity$6;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/LoginActivity$6;-><init>(Lcom/samsung/privilege/activity/LoginActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 668
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/LoginActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/LoginActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/LoginActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/LoginActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/LoginActivity;->processJsonAuth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/privilege/activity/LoginActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/LoginActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/privilege/activity/LoginActivity;->GetProfileData()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/privilege/activity/LoginActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/LoginActivity;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/LoginActivity;->gotoCampaignDetail(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/privilege/activity/LoginActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/LoginActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getLoginParams()Lcom/loopj/android/http/RequestParams;
    .registers 18

    .prologue
    .line 202
    new-instance v11, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v11}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 205
    .local v11, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v14, "app_id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "app_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v13, ""

    .line 212
    .local v13, "versionName":Ljava/lang/String;
    :try_start_39
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v13, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_49} :catch_279

    .line 216
    :goto_49
    const-string/jumbo v14, "client_version"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "client_version="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v7, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v7, v14}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 222
    .local v7, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    invoke-virtual {v7}, Lcom/bzbs/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "device_id":Ljava/lang/String;
    const-string/jumbo v14, "uuid"

    invoke-virtual {v11, v14, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "uuid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 229
    .local v1, "AndroidVersion":Ljava/lang/String;
    const-string/jumbo v14, "os"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "android "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "os=android "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "samsung "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, "platform":Ljava/lang/String;
    const-string/jumbo v14, "platform"

    invoke-virtual {v11, v14, v12}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "platform="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v14, "sponsorId"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sponsorId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/bzbs/data/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v7}, Lcom/bzbs/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "android_id":Ljava/lang/String;
    const-string/jumbo v14, "mac_address"

    invoke-virtual {v11, v14, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mac_address="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "carrier":Ljava/lang/String;
    const-string/jumbo v14, "carrier"

    invoke-virtual {v11, v14, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "carrier="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v7}, Lcom/bzbs/util/DeviceHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "contact_number":Ljava/lang/String;
    const-string/jumbo v14, "contact_number"

    invoke-virtual {v11, v14, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "contact_number="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v14, "transfer_points"

    const-string/jumbo v15, "manual"

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "transfer_points=manual"

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v14, "device_locale"

    const-string/jumbo v15, "1033"

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "device_locale=1033"

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v14, "imei"

    invoke-virtual {v7}, Lcom/bzbs/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "imei="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/bzbs/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :try_start_21e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/bzbs/util/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/bzbs/util/AdvertisingIdClient$AdInfo;

    move-result-object v2

    .line 298
    .local v2, "adInfo":Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
    invoke-virtual {v2}, Lcom/bzbs/util/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "advertisingId":Ljava/lang/String;
    const-string/jumbo v14, "advertising_id"

    invoke-virtual {v11, v14, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "advertising_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24b
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_24b} :catch_29b

    .line 308
    .end local v2    # "adInfo":Lcom/bzbs/util/AdvertisingIdClient$AdInfo;
    .end local v3    # "advertisingId":Ljava/lang/String;
    :goto_24b
    invoke-static {}, Lcom/bzbs/util/RootUtil;->isDeviceRooted()Z

    move-result v9

    .line 309
    .local v9, "device_rooted":Z
    const-string/jumbo v14, "device_rooted"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "device_rooted="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-object v11

    .line 213
    .end local v1    # "AndroidVersion":Ljava/lang/String;
    .end local v4    # "android_id":Ljava/lang/String;
    .end local v5    # "carrier":Ljava/lang/String;
    .end local v6    # "contact_number":Ljava/lang/String;
    .end local v7    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v8    # "device_id":Ljava/lang/String;
    .end local v9    # "device_rooted":Z
    .end local v12    # "platform":Ljava/lang/String;
    :catch_279
    move-exception v10

    .line 214
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Can\'t get versionName:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    .line 301
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "AndroidVersion":Ljava/lang/String;
    .restart local v4    # "android_id":Ljava/lang/String;
    .restart local v5    # "carrier":Ljava/lang/String;
    .restart local v6    # "contact_number":Ljava/lang/String;
    .restart local v7    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .restart local v8    # "device_id":Ljava/lang/String;
    .restart local v12    # "platform":Ljava/lang/String;
    :catch_29b
    move-exception v10

    .line 302
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "advertising_id"

    const-string/jumbo v15, ""

    invoke-virtual {v11, v14, v15}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "advertising_id="

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24b
.end method

.method private gotoCampaignDetail(I)V
    .registers 5
    .param p1, "campaign_id"    # I

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_23

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 673
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gift"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 691
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->finish()V

    .line 692
    return-void

    .line 677
    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "bzbs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_23
.end method

.method private processJsonAuth(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "mode_login"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/LoginActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/LoginActivity$5;-><init>(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/LoginActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/LoginActivity$2;-><init>(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method


# virtual methods
.method public authBuzzebees(Ljava/lang/String;)V
    .registers 11
    .param p1, "token_facebook"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 369
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/util/DC;->CK(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 370
    invoke-static {p0}, Lcom/bzbs/util/DC;->showDialogMessage(Landroid/content/Context;)V

    .line 423
    :goto_e
    return-void

    .line 375
    :cond_f
    :try_start_f
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity;->gDialog:Landroid/app/ProgressDialog;

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 376
    .local v2, "mMessageView":Landroid/widget/TextView;
    if-eqz v2, :cond_3a

    .line 377
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 378
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 379
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3a} :catch_be

    .line 385
    .end local v1    # "font":Landroid/graphics/Typeface;
    .end local v2    # "mMessageView":Landroid/widget/TextView;
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/data/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "api/auth/login"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getLoginParams()Lcom/loopj/android/http/RequestParams;

    move-result-object v3

    .line 392
    .local v3, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v5, "access_token"

    invoke-virtual {v3, v5, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "access_token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 397
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const-string/jumbo v5, ""

    const v6, 0x7f09026f

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6, v8, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/activity/LoginActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 398
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/samsung/privilege/activity/LoginActivity$4;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/LoginActivity$4;-><init>(Lcom/samsung/privilege/activity/LoginActivity;)V

    invoke-virtual {v0, v5, v4, v3, v6}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_e

    .line 381
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v3    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v4    # "url":Ljava/lang/String;
    :catch_be
    move-exception v5

    goto/16 :goto_3a
.end method

.method public doAdd(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 695
    new-instance v2, Lcom/bzbs/bean/MessagePopup;

    invoke-direct {v2}, Lcom/bzbs/bean/MessagePopup;-><init>()V

    .line 696
    .local v2, "objMessagePopup":Lcom/bzbs/bean/MessagePopup;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 697
    .local v0, "dateNow":Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    .line 698
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bzbs/data/UserLogin;->AppendQueueMessagePopup(Landroid/content/Context;Lcom/bzbs/bean/MessagePopup;)V

    .line 700
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/MainDrawerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 701
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 702
    return-void
.end method

.method public doGet(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetAndRemoveQueueMessagePopup(Landroid/content/Context;)Lcom/bzbs/bean/MessagePopup;

    move-result-object v1

    .line 706
    .local v1, "objMessagePopup":Lcom/bzbs/bean/MessagePopup;
    if-eqz v1, :cond_1e

    .line 707
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 712
    :goto_f
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 714
    return-void

    .line 709
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1e
    const-string/jumbo v2, "null"

    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/LoginActivity;->showToast(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public doLoginDevice(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 317
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/util/DC;->CK(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 318
    invoke-static {p0}, Lcom/bzbs/util/DC;->showDialogMessage(Landroid/content/Context;)V

    .line 366
    :goto_e
    return-void

    .line 322
    :cond_f
    const-string/jumbo v4, ""

    const v5, 0x7f09026f

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/LoginActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 325
    :try_start_1f
    iget-object v4, p0, Lcom/samsung/privilege/activity/LoginActivity;->gDialog:Landroid/app/ProgressDialog;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 326
    .local v2, "mMessageView":Landroid/widget/TextView;
    if-eqz v2, :cond_4a

    .line 327
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 328
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 329
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4a} :catch_9f

    .line 335
    .end local v1    # "font":Landroid/graphics/Typeface;
    .end local v2    # "mMessageView":Landroid/widget/TextView;
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/data/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "api/auth/device_login"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/privilege/activity/LoginActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 341
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getLoginParams()Lcom/loopj/android/http/RequestParams;

    move-result-object v5

    new-instance v6, Lcom/samsung/privilege/activity/LoginActivity$3;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/LoginActivity$3;-><init>(Lcom/samsung/privilege/activity/LoginActivity;)V

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_e

    .line 331
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v3    # "url":Ljava/lang/String;
    :catch_9f
    move-exception v4

    goto :goto_4a
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 170
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/LoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 72
    :try_start_14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_28

    .line 76
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string/jumbo v3, "#6A75BA"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_ad

    .line 82
    :cond_28
    :goto_28
    const v2, 0x7f040033

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/LoginActivity;->setContentView(I)V

    .line 84
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/privilege/activity/LoginActivity;->mHandler:Landroid/os/Handler;

    .line 87
    const v2, 0x7f100165

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 88
    .local v0, "button_login_device":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "517155661760483"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 89
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 94
    :goto_52
    const v2, 0x7f100166

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 95
    .local v1, "layout_login_button_facebook":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 96
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    :goto_6f
    const v2, 0x7f100168

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/login/widget/LoginButton;

    iput-object v2, p0, Lcom/samsung/privilege/activity/LoginActivity;->objFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    .line 102
    iget-object v2, p0, Lcom/samsung/privilege/activity/LoginActivity;->objFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/facebook/login/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v2, p0, Lcom/samsung/privilege/activity/LoginActivity;->objFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "public_profile"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string/jumbo v5, "user_friends"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/login/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 110
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/LoginActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v4, Lcom/samsung/privilege/activity/LoginActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/LoginActivity$1;-><init>(Lcom/samsung/privilege/activity/LoginActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 147
    return-void

    .line 91
    .end local v1    # "layout_login_button_facebook":Landroid/widget/RelativeLayout;
    :cond_a5
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_52

    .line 98
    .restart local v1    # "layout_login_button_facebook":Landroid/widget/RelativeLayout;
    :cond_a9
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6f

    .line 78
    .end local v0    # "button_login_device":Landroid/widget/ImageButton;
    .end local v1    # "layout_login_button_facebook":Landroid/widget/RelativeLayout;
    :catch_ad
    move-exception v2

    goto/16 :goto_28
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 175
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 164
    return-void
.end method
