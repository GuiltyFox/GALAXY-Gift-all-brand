.class public Lic/buzzebeeslib/util/ResumeUtil;
.super Ljava/lang/Object;
.source "ResumeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;
    }
.end annotation


# static fields
.field private static LOGCAT:Ljava/lang/String;

.field private static gIsshowDialogHasNewVersion:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "buzzebees.resume"

    sput-object v0, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lic/buzzebeeslib/util/ResumeUtil;->gIsshowDialogHasNewVersion:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Z
    .registers 1

    .prologue
    .line 30
    sget-boolean v0, Lic/buzzebeeslib/util/ResumeUtil;->gIsshowDialogHasNewVersion:Z

    return v0
.end method

.method static synthetic access$2(Z)V
    .registers 1

    .prologue
    .line 30
    sput-boolean p0, Lic/buzzebeeslib/util/ResumeUtil;->gIsshowDialogHasNewVersion:Z

    return-void
.end method

.method public static callResume(Landroid/content/Context;Landroid/app/Activity;Z)J
    .registers 29
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isForceCall"    # Z

    .prologue
    .line 34
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/LibUserLogin;->GetLastResumeTime(Landroid/content/Context;)J

    move-result-wide v14

    .line 36
    .local v14, "lastResumeTime":J
    const/16 p2, 0x1

    .line 38
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 39
    .local v6, "date":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    sub-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    div-long v8, v22, v24

    .line 41
    .local v8, "difftime":J
    sget-object v22, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-wide/16 v22, 0x3840

    cmp-long v22, v8, v22

    if-gtz v22, :cond_4f

    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-eqz v22, :cond_4f

    if-eqz p2, :cond_1dd

    .line 44
    :cond_4f
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 45
    .local v19, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v19, :cond_1e4

    const-string v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1e4

    .line 46
    new-instance v22, Ljava/lang/StringBuilder;

    sget-object v23, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "api/auth/device_resume?token="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 48
    .local v20, "url":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v13, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v7, Lic/buzzebeeslib/util/DeviceHelper;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lic/buzzebeeslib/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 51
    .local v7, "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    invoke-virtual {v7}, Lic/buzzebeeslib/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "android_id":Ljava/lang/String;
    new-instance v22, Lic/buzzebeeslib/bean/InputItem;

    const-string v23, "uuid"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "samsung"

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "GT-I9100"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 56
    .local v18, "platform":Ljava/lang/String;
    new-instance v22, Lic/buzzebeeslib/bean/InputItem;

    const-string v23, "platform"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 60
    .local v4, "AndroidVersion":Ljava/lang/String;
    new-instance v22, Lic/buzzebeeslib/bean/InputItem;

    const-string v23, "os"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "android "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v21, ""

    .line 65
    .local v21, "versionName":Ljava/lang/String;
    :try_start_ec
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
    :try_end_100
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ec .. :try_end_100} :catch_184

    .line 69
    :goto_100
    new-instance v22, Lic/buzzebeeslib/bean/InputItem;

    const-string v23, "client_version"

    new-instance v24, Ljava/lang/StringBuilder;

    sget-object v25, Lic/buzzebeeslib/LibConst;->AUTH_BUZZEBEES_PREFIX:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v22, Lic/buzzebeeslib/bean/InputItem;

    const-string v23, "device_token"

    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/LibUserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/LibUserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_19f

    .line 76
    new-instance v22, Lic/buzzebeeslib/bean/InputItem;

    const-string v23, "device_noti_enable"

    const-string v24, "true"

    invoke-direct/range {v22 .. v24}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_147
    new-instance v22, Lic/buzzebeeslib/bean/InputItem;

    const-string v23, "mac_address"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v22, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "resume="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_170
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v11, v0, :cond_1ae

    .line 93
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 94
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lic/buzzebeeslib/LibUserLogin;->SetLastResumeTime(Landroid/content/Context;J)Z

    move-wide/from16 v16, v14

    .line 101
    .end local v4    # "AndroidVersion":Ljava/lang/String;
    .end local v5    # "android_id":Ljava/lang/String;
    .end local v7    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    .end local v11    # "i":I
    .end local v13    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v14    # "lastResumeTime":J
    .end local v18    # "platform":Ljava/lang/String;
    .end local v19    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "versionName":Ljava/lang/String;
    .local v16, "lastResumeTime":J
    :goto_183
    return-wide v16

    .line 66
    .end local v16    # "lastResumeTime":J
    .restart local v4    # "AndroidVersion":Ljava/lang/String;
    .restart local v5    # "android_id":Ljava/lang/String;
    .restart local v7    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    .restart local v13    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .restart local v14    # "lastResumeTime":J
    .restart local v18    # "platform":Ljava/lang/String;
    .restart local v19    # "strTokenBuzzeBees":Ljava/lang/String;
    .restart local v20    # "url":Ljava/lang/String;
    .restart local v21    # "versionName":Ljava/lang/String;
    :catch_184
    move-exception v10

    .line 67
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v22, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Can\'t get versionName:"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_100

    .line 79
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19f
    new-instance v22, Lic/buzzebeeslib/bean/InputItem;

    const-string v23, "device_noti_enable"

    const-string v24, "false"

    invoke-direct/range {v22 .. v24}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_147

    .line 88
    .restart local v11    # "i":I
    :cond_1ae
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lic/buzzebeeslib/bean/InputItem;

    .line 89
    .local v12, "item":Lic/buzzebeeslib/bean/InputItem;
    sget-object v22, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "  key="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v12, Lic/buzzebeeslib/bean/InputItem;->key:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", value="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v12, Lic/buzzebeeslib/bean/InputItem;->value:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    add-int/lit8 v11, v11, 0x1

    goto :goto_170

    .line 98
    .end local v4    # "AndroidVersion":Ljava/lang/String;
    .end local v5    # "android_id":Ljava/lang/String;
    .end local v7    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    .end local v11    # "i":I
    .end local v12    # "item":Lic/buzzebeeslib/bean/InputItem;
    .end local v13    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v18    # "platform":Ljava/lang/String;
    .end local v19    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "versionName":Ljava/lang/String;
    :cond_1dd
    sget-object v22, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    const-string v23, "Not call resume, time is less than 4 hours..."

    invoke-static/range {v22 .. v23}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e4
    move-wide/from16 v16, v14

    .line 101
    .end local v14    # "lastResumeTime":J
    .restart local v16    # "lastResumeTime":J
    goto :goto_183
.end method

.method public static showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 8
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 207
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    new-instance v4, Lic/buzzebeeslib/util/ResumeUtil$2;

    invoke-direct {v4, p2}, Lic/buzzebeeslib/util/ResumeUtil$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 230
    const-string v3, "No"

    new-instance v4, Lic/buzzebeeslib/util/ResumeUtil$3;

    invoke-direct {v4, p2}, Lic/buzzebeeslib/util/ResumeUtil$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 237
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 238
    return-void
.end method

.method public static showDialogBuzzebeesError(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 8
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 195
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lic/buzzebeeslib/util/ResumeUtil$1;

    invoke-direct {v4}, Lic/buzzebeeslib/util/ResumeUtil$1;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 203
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 204
    return-void
.end method

.method public static showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 9
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 241
    sget-boolean v3, Lic/buzzebeeslib/util/ResumeUtil;->gIsshowDialogHasNewVersion:Z

    if-nez v3, :cond_34

    .line 243
    const/4 v3, 0x1

    :try_start_5
    sput-boolean v3, Lic/buzzebeeslib/util/ResumeUtil;->gIsshowDialogHasNewVersion:Z

    .line 245
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Yes"

    new-instance v5, Lic/buzzebeeslib/util/ResumeUtil$4;

    invoke-direct {v5, p2}, Lic/buzzebeeslib/util/ResumeUtil$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 268
    const-string v4, "No"

    new-instance v5, Lic/buzzebeeslib/util/ResumeUtil$5;

    invoke-direct {v5}, Lic/buzzebeeslib/util/ResumeUtil$5;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 275
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_35

    .line 280
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_34
    :goto_34
    return-void

    .line 276
    :catch_35
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to showDialogHasNewVersion():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method
