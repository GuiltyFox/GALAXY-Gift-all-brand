.class public Lcom/samsung/privilege/util/ResumeUtil;
.super Ljava/lang/Object;
.source "ResumeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;,
        Lcom/samsung/privilege/util/ResumeUtil$GetUpdateDeviceListener;
    }
.end annotation


# static fields
.field private static LOGCAT:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static gIsClosingDialog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "gift.resume"

    sput-object v0, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    .line 37
    const-class v0, Lcom/samsung/privilege/util/ResumeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    .line 439
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/privilege/util/ResumeUtil;->gIsClosingDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Z
    .registers 1

    .prologue
    .line 439
    sget-boolean v0, Lcom/samsung/privilege/util/ResumeUtil;->gIsClosingDialog:Z

    return v0
.end method

.method static synthetic access$3(Z)V
    .registers 1

    .prologue
    .line 439
    sput-boolean p0, Lcom/samsung/privilege/util/ResumeUtil;->gIsClosingDialog:Z

    return-void
.end method

.method public static callResume(Landroid/content/Context;Landroid/app/Activity;Z)J
    .registers 34
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isForceCall"    # Z

    .prologue
    .line 41
    const/16 v26, 0x0

    sput-boolean v26, Lcom/samsung/privilege/util/ResumeUtil;->gIsClosingDialog:Z

    .line 42
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/UserLogin;->GetLastResumeTime(Landroid/content/Context;)J

    move-result-wide v18

    .line 44
    .local v18, "lastResumeTime":J
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 45
    .local v8, "date":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    sub-long v26, v26, v18

    const-wide/16 v28, 0x3e8

    div-long v12, v26, v28

    .line 47
    .local v12, "difftime":J
    sget-object v26, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "isForceCall:"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v26, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget v26, Lcom/samsung/privilege/AppSetting;->RESUME_TIME:I

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v12, v26

    if-gtz v26, :cond_6e

    const-wide/16 v26, 0x0

    cmp-long v26, v18, v26

    if-eqz v26, :cond_6e

    if-eqz p2, :cond_30d

    .line 63
    :cond_6e
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 64
    .local v23, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v23, :cond_32c

    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_32c

    .line 65
    new-instance v26, Ljava/lang/StringBuilder;

    sget-object v27, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "api/auth/device_resume?token="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 67
    .local v24, "url":Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v17, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "access_token"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v9, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 73
    .local v9, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {v9}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "device_id":Ljava/lang/String;
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "uuid"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v10}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v26, Ljava/lang/StringBuilder;

    sget-object v27, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 77
    .local v22, "platform":Ljava/lang/String;
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "platform"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 80
    .local v4, "AndroidVersion":Ljava/lang/String;
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "os"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "android "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v25, ""

    .line 84
    .local v25, "versionName":Ljava/lang/String;
    :try_start_123
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v25, v0
    :try_end_137
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_123 .. :try_end_137} :catch_26c

    .line 88
    :goto_137
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "client_version"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "device_token"

    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v26 .. v28}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_287

    .line 93
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "device_noti_enable"

    const-string v28, "true"

    invoke-direct/range {v26 .. v28}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_186
    invoke-virtual {v9}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "android_id":Ljava/lang/String;
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "mac_address"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static/range {p0 .. p0}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "carrier":Ljava/lang/String;
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "carrier"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v6}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v26, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "carrier="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "transfer_points"

    const-string v28, "manual"

    invoke-direct/range {v26 .. v28}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v26, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    const-string v27, "transfer_points=manual"

    invoke-static/range {v26 .. v27}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/util/InfoData;->GetInfoData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 153
    .local v15, "info":Ljava/lang/String;
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "info"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v15}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v26, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "info="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v26, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "resume="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz p2, :cond_239

    .line 159
    const-string v26, "RESUME"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/samsung/privilege/AppSetting;->ClearLogOnSD(Ljava/lang/String;Landroid/content/Context;)V

    .line 160
    const-string v26, "RESUME"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/AppSetting;->SaveLogOnSDNoNewLine(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 162
    :cond_239
    const-string v7, "?"

    .line 163
    .local v7, "comma":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_23c
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-lt v14, v0, :cond_299

    .line 171
    new-instance v26, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    .line 174
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/UserLogin;->SetLastResumeTime(Landroid/content/Context;J)Z

    move-wide/from16 v20, v18

    .line 183
    .end local v4    # "AndroidVersion":Ljava/lang/String;
    .end local v5    # "android_id":Ljava/lang/String;
    .end local v6    # "carrier":Ljava/lang/String;
    .end local v7    # "comma":Ljava/lang/String;
    .end local v9    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v10    # "device_id":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "info":Ljava/lang/String;
    .end local v17    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v18    # "lastResumeTime":J
    .end local v22    # "platform":Ljava/lang/String;
    .end local v23    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v24    # "url":Ljava/lang/String;
    .end local v25    # "versionName":Ljava/lang/String;
    .local v20, "lastResumeTime":J
    :goto_26b
    return-wide v20

    .line 85
    .end local v20    # "lastResumeTime":J
    .restart local v4    # "AndroidVersion":Ljava/lang/String;
    .restart local v9    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v10    # "device_id":Ljava/lang/String;
    .restart local v17    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .restart local v18    # "lastResumeTime":J
    .restart local v22    # "platform":Ljava/lang/String;
    .restart local v23    # "strTokenBuzzeBees":Ljava/lang/String;
    .restart local v24    # "url":Ljava/lang/String;
    .restart local v25    # "versionName":Ljava/lang/String;
    :catch_26c
    move-exception v11

    .line 86
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v26, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Can\'t get versionName:"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_137

    .line 95
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_287
    new-instance v26, Lcom/samsung/privilege/bean/InputItem;

    const-string v27, "device_noti_enable"

    const-string v28, "true"

    invoke-direct/range {v26 .. v28}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_186

    .line 164
    .restart local v5    # "android_id":Ljava/lang/String;
    .restart local v6    # "carrier":Ljava/lang/String;
    .restart local v7    # "comma":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "info":Ljava/lang/String;
    :cond_299
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/privilege/bean/InputItem;

    .line 165
    .local v16, "item":Lcom/samsung/privilege/bean/InputItem;
    sget-object v26, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "  key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/privilege/bean/InputItem;->key:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", value="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/privilege/bean/InputItem;->value:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-eqz p2, :cond_309

    .line 167
    const-string v26, "RESUME"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/privilege/bean/InputItem;->key:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/privilege/bean/InputItem;->value:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, " "

    const-string v30, "%20"

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/AppSetting;->SaveLogOnSDNoNewLine(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 168
    const-string v7, "&"

    .line 163
    :cond_309
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_23c

    .line 178
    .end local v4    # "AndroidVersion":Ljava/lang/String;
    .end local v5    # "android_id":Ljava/lang/String;
    .end local v6    # "carrier":Ljava/lang/String;
    .end local v7    # "comma":Ljava/lang/String;
    .end local v9    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v10    # "device_id":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "info":Ljava/lang/String;
    .end local v16    # "item":Lcom/samsung/privilege/bean/InputItem;
    .end local v17    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v22    # "platform":Ljava/lang/String;
    .end local v23    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v24    # "url":Ljava/lang/String;
    .end local v25    # "versionName":Ljava/lang/String;
    :cond_30d
    sget-object v26, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Not call resume, time is less than "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v28, Lcom/samsung/privilege/AppSetting;->RESUME_TIME:I

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " seconds..."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static/range {p0 .. p1}, Lcom/samsung/privilege/util/ResumeUtil;->handleTableVersion(Landroid/content/Context;Landroid/app/Activity;)V

    :cond_32c
    move-wide/from16 v20, v18

    .line 183
    .end local v18    # "lastResumeTime":J
    .restart local v20    # "lastResumeTime":J
    goto/16 :goto_26b
.end method

.method public static callUpdateDeviceNoti(Landroid/content/Context;)V
    .registers 14
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 561
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v6, :cond_c8

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c8

    .line 563
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "api/auth/update_device?token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 565
    .local v8, "url":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v5, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v2, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 577
    .local v2, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 578
    .local v0, "AndroidVersion":Ljava/lang/String;
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "os"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "android "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "device_token"

    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c9

    .line 598
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "device_noti_enable"

    const-string v11, "true"

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :goto_6c
    invoke-virtual {v2}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "android_id":Ljava/lang/String;
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "mac_address"

    invoke-direct {v9, v10, v1}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    const-string v9, "gift.noti"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "update_device="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v3, v9, :cond_d6

    .line 617
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "token="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",device_token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 619
    .local v7, "strUpdateDevice":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetLastUpdateDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c8

    .line 622
    new-instance v9, Lcom/samsung/privilege/util/ResumeUtil$GetUpdateDeviceListener;

    invoke-direct {v9, p0}, Lcom/samsung/privilege/util/ResumeUtil$GetUpdateDeviceListener;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-static {v8, v5, v9, v10}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 623
    invoke-static {p0, v7}, Lcom/samsung/privilege/UserLogin;->SetLastUpdateDevice(Landroid/content/Context;Ljava/lang/String;)Z

    .line 626
    .end local v0    # "AndroidVersion":Ljava/lang/String;
    .end local v1    # "android_id":Ljava/lang/String;
    .end local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v3    # "i":I
    .end local v5    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v7    # "strUpdateDevice":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_c8
    return-void

    .line 601
    .restart local v0    # "AndroidVersion":Ljava/lang/String;
    .restart local v2    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v5    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .restart local v8    # "url":Ljava/lang/String;
    :cond_c9
    new-instance v9, Lcom/samsung/privilege/bean/InputItem;

    const-string v10, "device_noti_enable"

    const-string v11, "true"

    invoke-direct {v9, v10, v11}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 613
    .restart local v1    # "android_id":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_d6
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/InputItem;

    .line 614
    .local v4, "item":Lcom/samsung/privilege/bean/InputItem;
    const-string v9, "gift.noti"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  key="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v4, Lcom/samsung/privilege/bean/InputItem;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/samsung/privilege/bean/InputItem;->value:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f
.end method

.method public static handleTableVersion(Landroid/content/Context;Landroid/app/Activity;)V
    .registers 10
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 359
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetIsTokenNeedLogout(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 360
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    const-string v6, "this token need to logout..."

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, ""

    .line 363
    .local v2, "strApp_name":Ljava/lang/String;
    const-string v4, ""

    .line 365
    .local v4, "strNeedLogout_message":Ljava/lang/String;
    const v5, 0x7f09001d

    :try_start_14
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    const v5, 0x7f0902a8

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_23

    move-result-object v4

    .line 371
    :goto_1f
    invoke-static {v2, v4, p1}, Lcom/samsung/privilege/util/ResumeUtil;->showDialogNeedLogout(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 405
    .end local v2    # "strApp_name":Ljava/lang/String;
    .end local v4    # "strNeedLogout_message":Ljava/lang/String;
    :goto_22
    return-void

    .line 367
    .restart local v2    # "strApp_name":Ljava/lang/String;
    .restart local v4    # "strNeedLogout_message":Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 373
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "strApp_name":Ljava/lang/String;
    .end local v4    # "strNeedLogout_message":Ljava/lang/String;
    :cond_3d
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetIsAllowUse(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 374
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    const-string v6, "don\'t allow use, close application..."

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v2, ""

    .line 377
    .restart local v2    # "strApp_name":Ljava/lang/String;
    const-string v1, ""

    .line 379
    .local v1, "strAllow_use_message":Ljava/lang/String;
    const v5, 0x7f09001d

    :try_start_51
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    const v5, 0x7f0902a9

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5b} :catch_60

    move-result-object v1

    .line 385
    :goto_5c
    invoke-static {v2, v1, p1}, Lcom/samsung/privilege/util/ResumeUtil;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_22

    .line 381
    :catch_60
    move-exception v0

    .line 382
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "strAllow_use_message":Ljava/lang/String;
    .end local v2    # "strApp_name":Ljava/lang/String;
    :cond_7a
    invoke-static {p0}, Lcom/samsung/privilege/UserLogin;->GetIsHasNewVersion(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 388
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    const-string v6, "have new version?"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v2, ""

    .line 391
    .restart local v2    # "strApp_name":Ljava/lang/String;
    const-string v3, ""

    .line 393
    .local v3, "strHas_new_version_message":Ljava/lang/String;
    const v5, 0x7f09001d

    :try_start_8e
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    const v5, 0x7f0902aa

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_98} :catch_9d

    move-result-object v3

    .line 399
    :goto_99
    invoke-static {v2, v3, p1}, Lcom/samsung/privilege/util/ResumeUtil;->showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_22

    .line 395
    :catch_9d
    move-exception v0

    .line 396
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "strApp_name":Ljava/lang/String;
    .end local v3    # "strHas_new_version_message":Ljava/lang/String;
    :cond_b7
    sget-object v5, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    const-string v6, "do nothing..."

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22
.end method

.method public static showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 10
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 441
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 443
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.privilege.activity.CampaignListActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 444
    move-object v0, p2

    check-cast v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    move-object v3, v0

    .line 445
    .local v3, "objCampaignListActivity":Lcom/samsung/privilege/activity/CampaignListActivity;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->EnablePage(Z)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_4c

    .line 451
    .end local v3    # "objCampaignListActivity":Lcom/samsung/privilege/activity/CampaignListActivity;
    :cond_1f
    :goto_1f
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 453
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "Yes"

    new-instance v6, Lcom/samsung/privilege/util/ResumeUtil$3;

    invoke-direct {v6, p2}, Lcom/samsung/privilege/util/ResumeUtil$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 471
    const-string v5, "No"

    new-instance v6, Lcom/samsung/privilege/util/ResumeUtil$4;

    invoke-direct {v6, p2}, Lcom/samsung/privilege/util/ResumeUtil$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 479
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 481
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4b
    return-void

    .line 447
    :catch_4c
    move-exception v4

    goto :goto_1f
.end method

.method public static showDialogBuzzebeesError(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 8
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 408
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_28

    .line 409
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 410
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/samsung/privilege/util/ResumeUtil$1;

    invoke-direct {v4}, Lcom/samsung/privilege/util/ResumeUtil$1;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 418
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 420
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_28
    return-void
.end method

.method public static showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 9
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 484
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_45

    .line 485
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetIsshowDialogHasNewVersion(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 487
    :try_start_10
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/privilege/UserLogin;->SetIsshowDialogHasNewVersion(Landroid/content/Context;Z)Z

    .line 489
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 491
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Yes"

    new-instance v5, Lcom/samsung/privilege/util/ResumeUtil$5;

    invoke-direct {v5, p2}, Lcom/samsung/privilege/util/ResumeUtil$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 506
    const-string v4, "No"

    new-instance v5, Lcom/samsung/privilege/util/ResumeUtil$6;

    invoke-direct {v5, p2}, Lcom/samsung/privilege/util/ResumeUtil$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 514
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_45} :catch_46

    .line 520
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_45
    :goto_45
    return-void

    .line 515
    :catch_46
    move-exception v2

    .line 516
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/privilege/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to showDialogHasNewVersion():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45
.end method

.method public static showDialogMessage(Landroid/app/Activity;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_85

    .line 524
    new-instance v1, Landroid/app/Dialog;

    const v7, 0x1030010

    invoke-direct {v1, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 526
    .local v1, "dialogMessage":Landroid/app/Dialog;
    const v7, 0x7f0300e0

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 528
    const v7, 0x7f480002

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 529
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v7, 0x7f480004

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 530
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v7, 0x7f480005

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 531
    .local v3, "imgClose":Landroid/widget/ImageView;
    const v7, 0x7f480006

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 533
    .local v4, "tvClose":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 534
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 535
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 536
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 538
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 539
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 540
    invoke-static {p0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 542
    const-string v7, "Something went wrong!\nAnd we need to log you out!"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    new-instance v7, Lcom/samsung/privilege/util/ResumeUtil$7;

    invoke-direct {v7, v1, p0}, Lcom/samsung/privilege/util/ResumeUtil$7;-><init>(Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 553
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 554
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 556
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 558
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogMessage":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgClose":Landroid/widget/ImageView;
    .end local v4    # "tvClose":Landroid/widget/TextView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    :cond_85
    return-void
.end method

.method public static showDialogNeedLogout(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 8
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 423
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_28

    .line 424
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 426
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/samsung/privilege/util/ResumeUtil$2;

    invoke-direct {v4, p2}, Lcom/samsung/privilege/util/ResumeUtil$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 435
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 437
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_28
    return-void
.end method
