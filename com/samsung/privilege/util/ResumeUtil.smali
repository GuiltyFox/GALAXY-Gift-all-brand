.class public Lcom/samsung/privilege/util/ResumeUtil;
.super Ljava/lang/Object;
.source "ResumeUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static isCallResume:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/samsung/privilege/util/ResumeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/privilege/util/ResumeUtil;->isCallResume:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 40
    sput-boolean p0, Lcom/samsung/privilege/util/ResumeUtil;->isCallResume:Z

    return p0
.end method

.method public static callResume(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V
    .registers 30
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pHandler"    # Landroid/os/Handler;
    .param p3, "isForceCall"    # Z

    .prologue
    .line 129
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetLastResumeTime(Landroid/content/Context;)J

    move-result-wide v14

    .line 131
    .local v14, "lastResumeTime":J
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 132
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    sub-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    div-long v10, v22, v24

    .line 134
    .local v10, "difftime":J
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "isForceCall:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget v21, Lcom/bzbs/data/AppSetting;->RESUME_TIME:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v21, v10, v22

    if-gtz v21, :cond_7d

    const-wide/16 v22, 0x0

    cmp-long v21, v14, v22

    if-eqz v21, :cond_7d

    const/16 v21, 0x1

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_3e5

    .line 139
    :cond_7d
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 140
    .local v17, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v17, :cond_338

    const-string/jumbo v21, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_338

    .line 141
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "api/auth/device_resume"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 143
    .local v19, "url":Ljava/lang/String;
    new-instance v13, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v13}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 145
    .local v13, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v21, "token"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "token="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v18

    .line 149
    .local v18, "token":Lcom/facebook/AccessToken;
    if-eqz v18, :cond_103

    .line 150
    const-string/jumbo v21, "access_token"

    invoke-virtual/range {v18 .. v18}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "access_token="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_103
    const-string/jumbo v21, "uuid"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetUserUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "uuid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetUserUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "samsung"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "GT-I9100"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 161
    .local v16, "platform":Ljava/lang/String;
    const-string/jumbo v21, "platform"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "platform="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 165
    .local v4, "AndroidVersion":Ljava/lang/String;
    const-string/jumbo v21, "os"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "android "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "os=android "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v20, ""

    .line 170
    .local v20, "versionName":Ljava/lang/String;
    :try_start_1b1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v20, v0
    :try_end_1c5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b1 .. :try_end_1c5} :catch_309

    .line 174
    :goto_1c5
    const-string/jumbo v21, "client_version"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "client_version="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v21, "device_token"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "device_token="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_329

    .line 181
    const-string/jumbo v21, "device_noti_enable"

    const-string/jumbo v22, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_251
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "device_noti_enable=true"

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v9, Lcom/bzbs/util/DeviceHelper;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 188
    .local v9, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    invoke-virtual {v9}, Lcom/bzbs/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "android_id":Ljava/lang/String;
    const-string/jumbo v21, "mac_address"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mac_address="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v21, "carrier"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetUserCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "carrier="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetUserCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v21, "transfer_points"

    const-string/jumbo v22, "manual"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "transfer_points=manual"

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "resume="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v6, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v6}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 214
    .local v6, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v21, Lcom/samsung/privilege/util/ResumeUtil$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/privilege/util/ResumeUtil$2;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Activity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v6, v0, v1, v13, v2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 314
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 315
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/bzbs/data/UserLogin;->SetLastResumeTime(Landroid/content/Context;J)Z

    .line 375
    .end local v4    # "AndroidVersion":Ljava/lang/String;
    .end local v5    # "android_id":Ljava/lang/String;
    .end local v6    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v9    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v13    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v16    # "platform":Ljava/lang/String;
    .end local v17    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v18    # "token":Lcom/facebook/AccessToken;
    .end local v19    # "url":Ljava/lang/String;
    .end local v20    # "versionName":Ljava/lang/String;
    :goto_308
    return-void

    .line 171
    .restart local v4    # "AndroidVersion":Ljava/lang/String;
    .restart local v13    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v16    # "platform":Ljava/lang/String;
    .restart local v17    # "strTokenBuzzeBees":Ljava/lang/String;
    .restart local v18    # "token":Lcom/facebook/AccessToken;
    .restart local v19    # "url":Ljava/lang/String;
    .restart local v20    # "versionName":Ljava/lang/String;
    :catch_309
    move-exception v12

    .line 172
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Can\'t get versionName:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 183
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_329
    const-string/jumbo v21, "device_noti_enable"

    const-string/jumbo v22, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_251

    .line 317
    .end local v4    # "AndroidVersion":Ljava/lang/String;
    .end local v13    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v16    # "platform":Ljava/lang/String;
    .end local v18    # "token":Lcom/facebook/AccessToken;
    .end local v19    # "url":Ljava/lang/String;
    .end local v20    # "versionName":Ljava/lang/String;
    :cond_338
    const-string/jumbo v20, ""

    .line 319
    .restart local v20    # "versionName":Ljava/lang/String;
    :try_start_33b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v20, v0
    :try_end_34f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33b .. :try_end_34f} :catch_3c5

    .line 323
    :goto_34f
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, "client_version":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "api/auth/version?client_version="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 325
    .restart local v19    # "url":Ljava/lang/String;
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "(resume)url="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v6, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v6}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 328
    .restart local v6    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v21, Lcom/samsung/privilege/util/ResumeUtil$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/util/ResumeUtil$3;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 369
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 370
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/bzbs/data/UserLogin;->SetLastResumeTime(Landroid/content/Context;J)Z

    goto/16 :goto_308

    .line 320
    .end local v6    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v7    # "client_version":Ljava/lang/String;
    .end local v19    # "url":Ljava/lang/String;
    :catch_3c5
    move-exception v12

    .line 321
    .restart local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Can\'t get versionName:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34f

    .line 373
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v20    # "versionName":Ljava/lang/String;
    :cond_3e5
    sget-object v21, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Not call resume, time is less than "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/bzbs/data/AppSetting;->RESUME_TIME:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " seconds..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_308
.end method

.method public static callResumeXXX(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V
    .registers 8
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pHandler"    # Landroid/os/Handler;
    .param p3, "isForceCall"    # Z

    .prologue
    const/4 v2, 0x1

    .line 46
    sget-boolean v0, Lcom/samsung/privilege/util/ResumeUtil;->isCallResume:Z

    if-nez v0, :cond_2f

    .line 47
    sput-boolean v2, Lcom/samsung/privilege/util/ResumeUtil;->isCallResume:Z

    .line 48
    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    invoke-direct {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;-><init>()V

    .line 49
    invoke-virtual {v0, p1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->with(Landroid/content/Context;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    const-string/jumbo v1, "PERMISSION READ_PHONE_STATE Denied"

    .line 50
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->denyPermission(Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    .line 51
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->permissions([Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/ResumeUtil$1;

    invoke-direct {v1, p1, p0}, Lcom/samsung/privilege/util/ResumeUtil$1;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->callback(Lcom/samsung/privilege/util/AddOnPermissions;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->build()Lcom/samsung/privilege/util/RxPermissionUtils;

    .line 125
    :cond_2f
    return-void
.end method

.method public static handleTableVersion(Landroid/content/Context;Landroid/app/Activity;)V
    .registers 10
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    .line 378
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetIsTokenNeedLogout(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v6, :cond_46

    .line 379
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "this token need to logout..."

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string/jumbo v2, ""

    .line 382
    .local v2, "strApp_name":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 384
    .local v4, "strNeedLogout_message":Ljava/lang/String;
    const v5, 0x7f090384

    :try_start_18
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    const v5, 0x7f09009c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_27

    move-result-object v4

    .line 390
    :goto_23
    invoke-static {v2, v4, p1}, Lcom/samsung/privilege/util/ResumeUtil;->showDialogNeedLogout(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 424
    .end local v2    # "strApp_name":Ljava/lang/String;
    .end local v4    # "strNeedLogout_message":Ljava/lang/String;
    :goto_26
    return-void

    .line 386
    .restart local v2    # "strApp_name":Ljava/lang/String;
    .restart local v4    # "strNeedLogout_message":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "strApp_name":Ljava/lang/String;
    .end local v4    # "strNeedLogout_message":Ljava/lang/String;
    :cond_46
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetIsAllowUse(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 393
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "don\'t allow use, close application..."

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string/jumbo v2, ""

    .line 396
    .restart local v2    # "strApp_name":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 398
    .local v1, "strAllow_use_message":Ljava/lang/String;
    const v5, 0x7f090384

    :try_start_5d
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 399
    const v5, 0x7f090096

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_67} :catch_6c

    move-result-object v1

    .line 404
    :goto_68
    invoke-static {v2, v1, p1}, Lcom/samsung/privilege/util/ResumeUtil;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_26

    .line 400
    :catch_6c
    move-exception v0

    .line 401
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "strAllow_use_message":Ljava/lang/String;
    .end local v2    # "strApp_name":Ljava/lang/String;
    :cond_8b
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetIsHasNewVersion(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v6, :cond_d1

    .line 407
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "have new version?"

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v2, ""

    .line 410
    .restart local v2    # "strApp_name":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 412
    .local v3, "strHas_new_version_message":Ljava/lang/String;
    const v5, 0x7f090384

    :try_start_a2
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    const v5, 0x7f090099

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ac} :catch_b2

    move-result-object v3

    .line 418
    :goto_ad
    invoke-static {v2, v3, p1}, Lcom/samsung/privilege/util/ResumeUtil;->showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_26

    .line 414
    :catch_b2
    move-exception v0

    .line 415
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception := "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "strApp_name":Ljava/lang/String;
    .end local v3    # "strHas_new_version_message":Ljava/lang/String;
    :cond_d1
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "do nothing..."

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26
.end method

.method public static showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 8
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 443
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_35

    .line 444
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 445
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 446
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "Yes"

    new-instance v4, Lcom/samsung/privilege/util/ResumeUtil$6;

    invoke-direct {v4, p2}, Lcom/samsung/privilege/util/ResumeUtil$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "No"

    new-instance v4, Lcom/samsung/privilege/util/ResumeUtil$5;

    invoke-direct {v4, p2}, Lcom/samsung/privilege/util/ResumeUtil$5;-><init>(Landroid/app/Activity;)V

    .line 458
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 464
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 465
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 467
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_35
    return-void
.end method

.method public static showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 9
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 470
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_47

    .line 471
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetIsshowDialogHasNewVersion(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 473
    :try_start_10
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->SetIsshowDialogHasNewVersion(Landroid/content/Context;Z)Z

    .line 475
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 476
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "Yes"

    new-instance v5, Lcom/samsung/privilege/util/ResumeUtil$8;

    invoke-direct {v5, p2}, Lcom/samsung/privilege/util/ResumeUtil$8;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "No"

    new-instance v5, Lcom/samsung/privilege/util/ResumeUtil$7;

    invoke-direct {v5, p2}, Lcom/samsung/privilege/util/ResumeUtil$7;-><init>(Landroid/app/Activity;)V

    .line 491
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 498
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_47} :catch_48

    .line 504
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_47
    :goto_47
    return-void

    .line 499
    :catch_48
    move-exception v2

    .line 500
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to showDialogHasNewVersion():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method public static showDialogNeedLogout(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 8
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 427
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_29

    .line 428
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "Ok"

    new-instance v4, Lcom/samsung/privilege/util/ResumeUtil$4;

    invoke-direct {v4, p2}, Lcom/samsung/privilege/util/ResumeUtil$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 438
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 440
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_29
    return-void
.end method
