.class public Lcom/bzbs/util/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/bzbs/util/GCMUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static callUpdateDeviceNoti(Landroid/content/Context;)V
    .registers 12
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "strTokenBuzzeBees":Ljava/lang/String;
    sget-object v8, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "UserLogin.GetTokenBuzzeBees="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz v5, :cond_28

    const-string/jumbo v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 68
    :cond_28
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBeesSkip(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 69
    sget-object v8, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "UserLogin.GetTokenBuzzeBeesSkip="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_45
    if-eqz v5, :cond_135

    const-string/jumbo v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_135

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "api/auth/update_device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "url":Ljava/lang/String;
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 75
    .local v4, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v8, "token"

    invoke-virtual {v4, v8, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v3, Lcom/bzbs/util/DeviceHelper;

    invoke-direct {v3, p0}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 79
    .local v3, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 80
    .local v0, "AndroidVersion":Ljava/lang/String;
    const-string/jumbo v8, "os"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "android "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v8, "device_token"

    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_136

    .line 84
    const-string/jumbo v8, "device_noti_enable"

    const-string/jumbo v9, "true"

    invoke-virtual {v4, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v8, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "device_noti_enable=true"

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_b4
    invoke-virtual {v3}, Lcom/bzbs/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "android_id":Ljava/lang/String;
    const-string/jumbo v8, "mac_address"

    invoke-virtual {v4, v8, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",device_token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "strUpdateDevice":Ljava/lang/String;
    sget-object v8, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "strUpdateDevice1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v8, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "strUpdateDevice2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLastUpdateDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLastUpdateDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "xxx"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_149

    .line 128
    .end local v0    # "AndroidVersion":Ljava/lang/String;
    .end local v1    # "android_id":Ljava/lang/String;
    .end local v3    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v4    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v6    # "strUpdateDevice":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_135
    :goto_135
    return-void

    .line 87
    .restart local v0    # "AndroidVersion":Ljava/lang/String;
    .restart local v3    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .restart local v4    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_136
    const-string/jumbo v8, "device_noti_enable"

    const-string/jumbo v9, "false"

    invoke-virtual {v4, v8, v9}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v8, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "device_noti_enable=false"

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b4

    .line 101
    .restart local v1    # "android_id":Ljava/lang/String;
    .restart local v6    # "strUpdateDevice":Ljava/lang/String;
    :cond_149
    invoke-static {p0, v6}, Lcom/bzbs/data/UserLogin;->SetLastUpdateDevice(Landroid/content/Context;Ljava/lang/String;)Z

    .line 103
    sget-object v8, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 105
    .local v2, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v8, Lcom/bzbs/util/GCMUtil$1;

    invoke-direct {v8}, Lcom/bzbs/util/GCMUtil$1;-><init>()V

    invoke-virtual {v2, p0, v7, v4, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto :goto_135
.end method

.method public static registerGCM(Landroid/content/Context;)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v1, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call registerGCM()"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 31
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "regId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_23

    .line 34
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 41
    :goto_22
    return-void

    .line 36
    :cond_23
    sget-object v1, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Existing registration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p0, v0}, Lcom/bzbs/data/UserLogin;->SetGCM_ID(Landroid/content/Context;Ljava/lang/String;)Z

    .line 39
    invoke-static {p0}, Lcom/bzbs/util/GCMUtil;->callUpdateDeviceNoti(Landroid/content/Context;)V

    goto :goto_22
.end method

.method public static unRegisterGCM(Landroid/content/Context;)V
    .registers 5
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v1, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Call unRegisterGCM()"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 51
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "regId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 62
    :goto_15
    return-void

    .line 56
    :cond_16
    sget-object v1, Lcom/bzbs/util/GCMUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UnRegister from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V

    .line 58
    const-string/jumbo v1, ""

    invoke-static {p0, v1}, Lcom/bzbs/data/UserLogin;->SetGCM_ID(Landroid/content/Context;Ljava/lang/String;)Z

    .line 60
    invoke-static {p0}, Lcom/bzbs/util/GCMUtil;->callUpdateDeviceNoti(Landroid/content/Context;)V

    goto :goto_15
.end method
