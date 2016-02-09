.class public Lcom/samsung/privilege/util/DeviceInfoUtil;
.super Ljava/lang/Object;
.source "DeviceInfoUtil.java"


# static fields
.field public static gPREF_FILE_NAME:Ljava/lang/String;

.field public static gPreferencesDeviceInfo:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-string v0, "BuzzeBees_DeviceInfo"

    sput-object v0, Lcom/samsung/privilege/util/DeviceInfoUtil;->gPREF_FILE_NAME:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ClearPreferencesFromCurrentDeviceInfo(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v1, Lcom/samsung/privilege/util/DeviceInfoUtil;->gPREF_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/util/DeviceInfoUtil;->gPreferencesDeviceInfo:Landroid/content/SharedPreferences;

    .line 27
    sget-object v1, Lcom/samsung/privilege/util/DeviceInfoUtil;->gPreferencesDeviceInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public static getSharedPreferencesDeviceInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    sget-object v1, Lcom/samsung/privilege/util/DeviceInfoUtil;->gPREF_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/util/DeviceInfoUtil;->gPreferencesDeviceInfo:Landroid/content/SharedPreferences;

    .line 13
    sget-object v1, Lcom/samsung/privilege/util/DeviceInfoUtil;->gPreferencesDeviceInfo:Landroid/content/SharedPreferences;

    const-string v2, "DeviceUserUID"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "deviceUserUID":Ljava/lang/String;
    return-object v0
.end method

.method public static saveSharedPreferencesDeviceInfo(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p0, "pStrValue"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/samsung/privilege/util/DeviceInfoUtil;->ClearPreferencesFromCurrentDeviceInfo(Landroid/content/Context;)V

    .line 19
    sget-object v1, Lcom/samsung/privilege/util/DeviceInfoUtil;->gPREF_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/util/DeviceInfoUtil;->gPreferencesDeviceInfo:Landroid/content/SharedPreferences;

    .line 20
    sget-object v1, Lcom/samsung/privilege/util/DeviceInfoUtil;->gPreferencesDeviceInfo:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 21
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "DeviceUserUID"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    return-void
.end method
