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
    .registers 28
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isForceCall"    # Z

    .prologue
    .line 34
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/LibUserLogin;->GetLastResumeTime(Landroid/content/Context;)J

    move-result-wide v12

    .line 36
    .local v12, "lastResumeTime":J
    const/16 p2, 0x1

    .line 38
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 39
    .local v5, "date":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    sub-long v21, v21, v12

    const-wide/16 v23, 0x3e8

    div-long v7, v21, v23

    .line 41
    .local v7, "difftime":J
    sget-object v21, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-wide/16 v21, 0x3840

    cmp-long v21, v7, v21

    if-gtz v21, :cond_4f

    const-wide/16 v21, 0x0

    cmp-long v21, v12, v21

    if-eqz v21, :cond_4f

    if-eqz p2, :cond_1ee

    .line 44
    :cond_4f
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 45
    .local v18, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v18, :cond_1f5

    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1f5

    .line 46
    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "api/auth/device_resume?token="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 48
    .local v19, "url":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v16, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v6, Lic/buzzebeeslib/util/DeviceHelper;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lic/buzzebeeslib/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 51
    .local v6, "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    invoke-virtual {v6}, Lic/buzzebeeslib/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "android_id":Ljava/lang/String;
    new-instance v21, Lic/buzzebeeslib/bean/InputItem;

    const-string v22, "uuid"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 56
    .local v17, "platform":Ljava/lang/String;
    new-instance v21, Lic/buzzebeeslib/bean/InputItem;

    const-string v22, "platform"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 60
    .local v3, "AndroidVersion":Ljava/lang/String;
    new-instance v21, Lic/buzzebeeslib/bean/InputItem;

    const-string v22, "os"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "android "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v20, ""

    .line 65
    .local v20, "versionName":Ljava/lang/String;
    :try_start_f2
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
    :try_end_106
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f2 .. :try_end_106} :catch_191

    .line 69
    :goto_106
    new-instance v21, Lic/buzzebeeslib/bean/InputItem;

    const-string v22, "client_version"

    new-instance v23, Ljava/lang/StringBuilder;

    sget-object v24, Lic/buzzebeeslib/LibConst;->AUTH_BUZZEBEES_PREFIX:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v21, Lic/buzzebeeslib/bean/InputItem;

    const-string v22, "device_token"

    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/LibUserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/LibUserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_1ac

    .line 76
    new-instance v21, Lic/buzzebeeslib/bean/InputItem;

    const-string v22, "device_noti_enable"

    const-string v23, "true"

    invoke-direct/range {v21 .. v23}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_153
    new-instance v21, Lic/buzzebeeslib/bean/InputItem;

    const-string v22, "mac_address"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v21, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "resume="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_17e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v10, v0, :cond_1bd

    .line 93
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 94
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lic/buzzebeeslib/LibUserLogin;->SetLastResumeTime(Landroid/content/Context;J)Z

    move-wide v14, v12

    .line 101
    .end local v3    # "AndroidVersion":Ljava/lang/String;
    .end local v4    # "android_id":Ljava/lang/String;
    .end local v6    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    .end local v10    # "i":I
    .end local v12    # "lastResumeTime":J
    .end local v16    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v17    # "platform":Ljava/lang/String;
    .end local v18    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v19    # "url":Ljava/lang/String;
    .end local v20    # "versionName":Ljava/lang/String;
    .local v14, "lastResumeTime":J
    :goto_190
    return-wide v14

    .line 66
    .end local v14    # "lastResumeTime":J
    .restart local v3    # "AndroidVersion":Ljava/lang/String;
    .restart local v4    # "android_id":Ljava/lang/String;
    .restart local v6    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    .restart local v12    # "lastResumeTime":J
    .restart local v16    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .restart local v17    # "platform":Ljava/lang/String;
    .restart local v18    # "strTokenBuzzeBees":Ljava/lang/String;
    .restart local v19    # "url":Ljava/lang/String;
    .restart local v20    # "versionName":Ljava/lang/String;
    :catch_191
    move-exception v9

    .line 67
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v21, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Can\'t get versionName:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_106

    .line 79
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1ac
    new-instance v21, Lic/buzzebeeslib/bean/InputItem;

    const-string v22, "device_noti_enable"

    const-string v23, "false"

    invoke-direct/range {v21 .. v23}, Lic/buzzebeeslib/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 88
    .restart local v10    # "i":I
    :cond_1bd
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lic/buzzebeeslib/bean/InputItem;

    .line 89
    .local v11, "item":Lic/buzzebeeslib/bean/InputItem;
    sget-object v21, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "  key="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v11, Lic/buzzebeeslib/bean/InputItem;->key:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", value="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v11, Lic/buzzebeeslib/bean/InputItem;->value:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    add-int/lit8 v10, v10, 0x1

    goto :goto_17e

    .line 98
    .end local v3    # "AndroidVersion":Ljava/lang/String;
    .end local v4    # "android_id":Ljava/lang/String;
    .end local v6    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    .end local v10    # "i":I
    .end local v11    # "item":Lic/buzzebeeslib/bean/InputItem;
    .end local v16    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v17    # "platform":Ljava/lang/String;
    .end local v18    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v19    # "url":Ljava/lang/String;
    .end local v20    # "versionName":Ljava/lang/String;
    :cond_1ee
    sget-object v21, Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    const-string v22, "Not call resume, time is less than 4 hours..."

    invoke-static/range {v21 .. v22}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f5
    move-wide v14, v12

    .line 101
    .end local v12    # "lastResumeTime":J
    .restart local v14    # "lastResumeTime":J
    goto :goto_190
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
