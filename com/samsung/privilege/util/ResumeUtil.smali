.class public Lcom/samsung/privilege/util/ResumeUtil;
.super Ljava/lang/Object;
.source "ResumeUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/samsung/privilege/util/ResumeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static callResume(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V
    .registers 8
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pHandler"    # Landroid/os/Handler;
    .param p3, "isForceCall"    # Z

    .prologue
    .line 38
    new-instance v0, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    invoke-direct {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->with(Landroid/content/Context;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    const-string/jumbo v1, "PERMISSION READ_PHONE_STATE Denied"

    .line 40
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->denyPermission(Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    .line 41
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->permissions([Ljava/lang/String;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/ResumeUtil$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/privilege/util/ResumeUtil$1;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->callback(Lcom/samsung/privilege/util/AddOnPermissions;)Lcom/samsung/privilege/util/RxPermissionUtils$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/samsung/privilege/util/RxPermissionUtils$Builder;->build()Lcom/samsung/privilege/util/RxPermissionUtils;

    .line 53
    return-void
.end method

.method public static callResumeAfterCheckPermission(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V
    .registers 30
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pHandler"    # Landroid/os/Handler;
    .param p3, "isForceCall"    # Z

    .prologue
    .line 57
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetLastResumeTime(Landroid/content/Context;)J

    move-result-wide v14

    .line 59
    .local v14, "lastResumeTime":J
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 60
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    sub-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    div-long v12, v22, v24

    .line 62
    .local v12, "difftime":J
    sget-object v22, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isForceCall:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v22, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget v22, Lcom/bzbs/data/AppSetting;->RESUME_TIME:I

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v22, v12, v22

    if-gtz v22, :cond_79

    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-eqz v22, :cond_79

    const/16 v22, 0x1

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_254

    .line 67
    :cond_79
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 68
    .local v18, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v18, :cond_222

    const-string/jumbo v22, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_222

    .line 69
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "api/auth/device_resume"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 71
    .local v20, "url":Ljava/lang/String;
    new-instance v16, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v16 .. v16}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 73
    .local v16, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v22, "token"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v19

    .line 76
    .local v19, "token":Lcom/facebook/AccessToken;
    if-eqz v19, :cond_c9

    .line 77
    const-string/jumbo v22, "access_token"

    invoke-virtual/range {v19 .. v19}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_c9
    new-instance v9, Lcom/bzbs/util/DeviceHelper;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 82
    .local v9, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    invoke-virtual {v9}, Lcom/bzbs/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    .line 83
    .local v10, "device_id":Ljava/lang/String;
    const-string/jumbo v22, "uuid"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 86
    .local v17, "platform":Ljava/lang/String;
    const-string/jumbo v22, "platform"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 89
    .local v4, "AndroidVersion":Ljava/lang/String;
    const-string/jumbo v22, "os"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "android "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v21, ""

    .line 93
    .local v21, "versionName":Ljava/lang/String;
    :try_start_12d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v21, v0
    :try_end_141
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12d .. :try_end_141} :catch_223

    .line 97
    :goto_141
    const-string/jumbo v22, "client_version"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v22, "device_token"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_243

    .line 102
    const-string/jumbo v22, "device_noti_enable"

    const-string/jumbo v23, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_191
    invoke-virtual {v9}, Lcom/bzbs/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "android_id":Ljava/lang/String;
    const-string/jumbo v22, "mac_address"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static/range {p0 .. p0}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "carrier":Ljava/lang/String;
    const-string/jumbo v22, "carrier"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v22, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "carrier="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v22, "transfer_points"

    const-string/jumbo v23, "manual"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v22, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "transfer_points=manual"

    invoke-static/range {v22 .. v23}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v22, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "resume="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v7, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v7}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 132
    .local v7, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v22, Lcom/samsung/privilege/util/ResumeUtil$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/privilege/util/ResumeUtil$2;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Activity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 228
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 229
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/bzbs/data/UserLogin;->SetLastResumeTime(Landroid/content/Context;J)Z

    .line 239
    .end local v4    # "AndroidVersion":Ljava/lang/String;
    .end local v5    # "android_id":Ljava/lang/String;
    .end local v6    # "carrier":Ljava/lang/String;
    .end local v7    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v9    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v10    # "device_id":Ljava/lang/String;
    .end local v16    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v17    # "platform":Ljava/lang/String;
    .end local v18    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v19    # "token":Lcom/facebook/AccessToken;
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "versionName":Ljava/lang/String;
    :cond_222
    :goto_222
    return-void

    .line 94
    .restart local v4    # "AndroidVersion":Ljava/lang/String;
    .restart local v9    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .restart local v10    # "device_id":Ljava/lang/String;
    .restart local v16    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v17    # "platform":Ljava/lang/String;
    .restart local v18    # "strTokenBuzzeBees":Ljava/lang/String;
    .restart local v19    # "token":Lcom/facebook/AccessToken;
    .restart local v20    # "url":Ljava/lang/String;
    .restart local v21    # "versionName":Ljava/lang/String;
    :catch_223
    move-exception v11

    .line 95
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v22, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Can\'t get versionName:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_141

    .line 104
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_243
    const-string/jumbo v22, "device_noti_enable"

    const-string/jumbo v23, "true"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_191

    .line 233
    .end local v4    # "AndroidVersion":Ljava/lang/String;
    .end local v9    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v10    # "device_id":Ljava/lang/String;
    .end local v16    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v17    # "platform":Ljava/lang/String;
    .end local v18    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v19    # "token":Lcom/facebook/AccessToken;
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "versionName":Ljava/lang/String;
    :cond_254
    sget-object v22, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Not call resume, time is less than "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/bzbs/data/AppSetting;->RESUME_TIME:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " seconds..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static/range {p0 .. p1}, Lcom/samsung/privilege/util/ResumeUtil;->handleTableVersion(Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_222
.end method

.method public static handleTableVersion(Landroid/content/Context;Landroid/app/Activity;)V
    .registers 10
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    .line 242
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetIsTokenNeedLogout(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v6, :cond_46

    .line 243
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "this token need to logout..."

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v2, ""

    .line 246
    .local v2, "strApp_name":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 248
    .local v4, "strNeedLogout_message":Ljava/lang/String;
    const v5, 0x7f090383

    :try_start_18
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    const v5, 0x7f09009c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_27

    move-result-object v4

    .line 254
    :goto_23
    invoke-static {v2, v4, p1}, Lcom/samsung/privilege/util/ResumeUtil;->showDialogNeedLogout(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 288
    .end local v2    # "strApp_name":Ljava/lang/String;
    .end local v4    # "strNeedLogout_message":Ljava/lang/String;
    :goto_26
    return-void

    .line 250
    .restart local v2    # "strApp_name":Ljava/lang/String;
    .restart local v4    # "strNeedLogout_message":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 251
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

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "strApp_name":Ljava/lang/String;
    .end local v4    # "strNeedLogout_message":Ljava/lang/String;
    :cond_46
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetIsAllowUse(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 257
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "don\'t allow use, close application..."

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v2, ""

    .line 260
    .restart local v2    # "strApp_name":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 262
    .local v1, "strAllow_use_message":Ljava/lang/String;
    const v5, 0x7f090383

    :try_start_5d
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    const v5, 0x7f090096

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_67} :catch_6c

    move-result-object v1

    .line 268
    :goto_68
    invoke-static {v2, v1, p1}, Lcom/samsung/privilege/util/ResumeUtil;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_26

    .line 264
    :catch_6c
    move-exception v0

    .line 265
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

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "strAllow_use_message":Ljava/lang/String;
    .end local v2    # "strApp_name":Ljava/lang/String;
    :cond_8b
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetIsHasNewVersion(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v6, :cond_d1

    .line 271
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "have new version?"

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v2, ""

    .line 274
    .restart local v2    # "strApp_name":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 276
    .local v3, "strHas_new_version_message":Ljava/lang/String;
    const v5, 0x7f090383

    :try_start_a2
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    const v5, 0x7f090099

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ac} :catch_b2

    move-result-object v3

    .line 282
    :goto_ad
    invoke-static {v2, v3, p1}, Lcom/samsung/privilege/util/ResumeUtil;->showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_26

    .line 278
    :catch_b2
    move-exception v0

    .line 279
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

    .line 284
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
    .line 307
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_35

    .line 308
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 310
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "Yes"

    new-instance v4, Lcom/samsung/privilege/util/ResumeUtil$5;

    invoke-direct {v4, p2}, Lcom/samsung/privilege/util/ResumeUtil$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "No"

    new-instance v4, Lcom/samsung/privilege/util/ResumeUtil$4;

    invoke-direct {v4, p2}, Lcom/samsung/privilege/util/ResumeUtil$4;-><init>(Landroid/app/Activity;)V

    .line 322
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 328
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 329
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 331
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
    .line 334
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_47

    .line 335
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetIsshowDialogHasNewVersion(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 337
    :try_start_10
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->SetIsshowDialogHasNewVersion(Landroid/content/Context;Z)Z

    .line 339
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "Yes"

    new-instance v5, Lcom/samsung/privilege/util/ResumeUtil$7;

    invoke-direct {v5, p2}, Lcom/samsung/privilege/util/ResumeUtil$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "No"

    new-instance v5, Lcom/samsung/privilege/util/ResumeUtil$6;

    invoke-direct {v5, p2}, Lcom/samsung/privilege/util/ResumeUtil$6;-><init>(Landroid/app/Activity;)V

    .line 355
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 362
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_47} :catch_48

    .line 368
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_47
    :goto_47
    return-void

    .line 363
    :catch_48
    move-exception v2

    .line 364
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
    .line 291
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_29

    .line 292
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "Ok"

    new-instance v4, Lcom/samsung/privilege/util/ResumeUtil$3;

    invoke-direct {v4, p2}, Lcom/samsung/privilege/util/ResumeUtil$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 302
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 304
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_29
    return-void
.end method
