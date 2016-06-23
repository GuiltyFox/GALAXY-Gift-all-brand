.class public Lcom/bzbs/lib/survey/util/ResumeUtil;
.super Ljava/lang/Object;
.source "ResumeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;
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
    const-string/jumbo v0, "buzzebees.resume"

    sput-object v0, Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bzbs/lib/survey/util/ResumeUtil;->gIsshowDialogHasNewVersion:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/bzbs/lib/survey/util/ResumeUtil;->gIsshowDialogHasNewVersion:Z

    return p0
.end method

.method public static callResume(Landroid/content/Context;Landroid/app/Activity;Z)J
    .registers 29
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isForceCall"    # Z

    .prologue
    .line 34
    invoke-static/range {p0 .. p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetLastResumeTime(Landroid/content/Context;)J

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
    sget-object v22, Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-wide/16 v22, 0x3840

    cmp-long v22, v8, v22

    if-gtz v22, :cond_59

    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-eqz v22, :cond_59

    const/16 v22, 0x1

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_211

    .line 44
    :cond_59
    invoke-static/range {p0 .. p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 45
    .local v19, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v19, :cond_219

    const-string/jumbo v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_219

    .line 46
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/bzbs/lib/survey/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "api/auth/device_resume?token="

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
    .local v13, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/InputItem;>;"
    new-instance v7, Lcom/bzbs/lib/survey/util/DeviceHelper;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/bzbs/lib/survey/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 51
    .local v7, "deviceHelper":Lcom/bzbs/lib/survey/util/DeviceHelper;
    invoke-virtual {v7}, Lcom/bzbs/lib/survey/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "android_id":Ljava/lang/String;
    new-instance v22, Lcom/bzbs/lib/survey/bean/InputItem;

    const-string/jumbo v23, "uuid"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lcom/bzbs/lib/survey/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
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

    move-result-object v18

    .line 56
    .local v18, "platform":Ljava/lang/String;
    new-instance v22, Lcom/bzbs/lib/survey/bean/InputItem;

    const-string/jumbo v23, "platform"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/bzbs/lib/survey/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 60
    .local v4, "AndroidVersion":Ljava/lang/String;
    new-instance v22, Lcom/bzbs/lib/survey/bean/InputItem;

    const-string/jumbo v23, "os"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "android "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lcom/bzbs/lib/survey/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const-string/jumbo v21, ""

    .line 65
    .local v21, "versionName":Ljava/lang/String;
    :try_start_102
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
    :try_end_116
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_102 .. :try_end_116} :catch_1d3

    .line 69
    :goto_116
    new-instance v22, Lcom/bzbs/lib/survey/bean/InputItem;

    const-string/jumbo v23, "client_version"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v25, Lcom/bzbs/lib/survey/LibConst;->AUTH_BUZZEBEES_PREFIX:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lcom/bzbs/lib/survey/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v22, Lcom/bzbs/lib/survey/bean/InputItem;

    const-string/jumbo v23, "device_token"

    invoke-static/range {p0 .. p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lcom/bzbs/lib/survey/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static/range {p0 .. p0}, Lcom/bzbs/lib/survey/LibUserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f3

    .line 76
    new-instance v22, Lcom/bzbs/lib/survey/bean/InputItem;

    const-string/jumbo v23, "device_noti_enable"

    const-string/jumbo v24, "true"

    invoke-direct/range {v22 .. v24}, Lcom/bzbs/lib/survey/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_167
    new-instance v22, Lcom/bzbs/lib/survey/bean/InputItem;

    const-string/jumbo v23, "mac_address"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lcom/bzbs/lib/survey/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v22, Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

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

    invoke-static/range {v22 .. v23}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_196
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_205

    .line 88
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bzbs/lib/survey/bean/InputItem;

    .line 89
    .local v12, "item":Lcom/bzbs/lib/survey/bean/InputItem;
    sget-object v22, Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "  key="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v12, Lcom/bzbs/lib/survey/bean/InputItem;->key:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", value="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v12, Lcom/bzbs/lib/survey/bean/InputItem;->value:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    add-int/lit8 v11, v11, 0x1

    goto :goto_196

    .line 66
    .end local v11    # "i":I
    .end local v12    # "item":Lcom/bzbs/lib/survey/bean/InputItem;
    :catch_1d3
    move-exception v10

    .line 67
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v22, Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Can\'t get versionName:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_116

    .line 79
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1f3
    new-instance v22, Lcom/bzbs/lib/survey/bean/InputItem;

    const-string/jumbo v23, "device_noti_enable"

    const-string/jumbo v24, "false"

    invoke-direct/range {v22 .. v24}, Lcom/bzbs/lib/survey/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_167

    .line 93
    .restart local v11    # "i":I
    :cond_205
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 94
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/bzbs/lib/survey/LibUserLogin;->SetLastResumeTime(Landroid/content/Context;J)Z

    move-wide/from16 v16, v14

    .line 101
    .end local v4    # "AndroidVersion":Ljava/lang/String;
    .end local v5    # "android_id":Ljava/lang/String;
    .end local v7    # "deviceHelper":Lcom/bzbs/lib/survey/util/DeviceHelper;
    .end local v11    # "i":I
    .end local v13    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/InputItem;>;"
    .end local v14    # "lastResumeTime":J
    .end local v18    # "platform":Ljava/lang/String;
    .end local v19    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    .end local v21    # "versionName":Ljava/lang/String;
    .local v16, "lastResumeTime":J
    :goto_210
    return-wide v16

    .line 98
    .end local v16    # "lastResumeTime":J
    .restart local v14    # "lastResumeTime":J
    :cond_211
    sget-object v22, Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

    const-string/jumbo v23, "Not call resume, time is less than 4 hours..."

    invoke-static/range {v22 .. v23}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_219
    move-wide/from16 v16, v14

    .line 101
    .end local v14    # "lastResumeTime":J
    .restart local v16    # "lastResumeTime":J
    goto :goto_210
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

    const-string/jumbo v3, "Yes"

    new-instance v4, Lcom/bzbs/lib/survey/util/ResumeUtil$3;

    invoke-direct {v4, p2}, Lcom/bzbs/lib/survey/util/ResumeUtil$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "No"

    new-instance v4, Lcom/bzbs/lib/survey/util/ResumeUtil$2;

    invoke-direct {v4, p2}, Lcom/bzbs/lib/survey/util/ResumeUtil$2;-><init>(Landroid/app/Activity;)V

    .line 230
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

    const-string/jumbo v3, "Ok"

    new-instance v4, Lcom/bzbs/lib/survey/util/ResumeUtil$1;

    invoke-direct {v4}, Lcom/bzbs/lib/survey/util/ResumeUtil$1;-><init>()V

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
    sget-boolean v3, Lcom/bzbs/lib/survey/util/ResumeUtil;->gIsshowDialogHasNewVersion:Z

    if-nez v3, :cond_36

    .line 243
    const/4 v3, 0x1

    :try_start_5
    sput-boolean v3, Lcom/bzbs/lib/survey/util/ResumeUtil;->gIsshowDialogHasNewVersion:Z

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

    const-string/jumbo v4, "Yes"

    new-instance v5, Lcom/bzbs/lib/survey/util/ResumeUtil$5;

    invoke-direct {v5, p2}, Lcom/bzbs/lib/survey/util/ResumeUtil$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "No"

    new-instance v5, Lcom/bzbs/lib/survey/util/ResumeUtil$4;

    invoke-direct {v5}, Lcom/bzbs/lib/survey/util/ResumeUtil$4;-><init>()V

    .line 268
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 275
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    .line 280
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_36
    :goto_36
    return-void

    .line 276
    :catch_37
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;

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

    invoke-static {v3, v4}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method
