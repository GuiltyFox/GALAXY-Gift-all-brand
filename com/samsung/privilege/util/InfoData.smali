.class public Lcom/samsung/privilege/util/InfoData;
.super Ljava/lang/Object;
.source "InfoData.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInfoData(Landroid/content/Context;)Ljava/lang/String;
    .registers 15
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 15
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 17
    .local v7, "jsonInfo":Lorg/json/JSONObject;
    new-instance v3, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 20
    .local v3, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v12, "account"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/accounts/AccountManager;

    .line 21
    .local v9, "manager":Landroid/accounts/AccountManager;
    invoke-virtual {v9}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v8

    .line 22
    .local v8, "list":[Landroid/accounts/Account;
    const-string v10, ""

    .line 23
    .local v10, "str_account":Ljava/lang/String;
    const-string v11, ""

    .line 24
    .local v11, "str_comma":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    array-length v12, v8

    if-lt v6, v12, :cond_9b

    .line 32
    :try_start_1e
    const-string v12, "account"

    invoke-virtual {v7, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_de

    .line 40
    :goto_23
    :try_start_23
    const-string v12, "imei"

    invoke-virtual {v3}, Lcom/samsung/privilege/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2c} :catch_db

    .line 48
    :goto_2c
    :try_start_2c
    const-string v12, "android_id"

    invoke-virtual {v3}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_d8

    .line 56
    :goto_35
    :try_start_35
    const-string v12, "device_mac"

    invoke-virtual {v3}, Lcom/samsung/privilege/util/DeviceHelper;->getWifiAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_d5

    .line 64
    :goto_3e
    :try_start_3e
    invoke-static {p0}, Lcom/samsung/privilege/util/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/samsung/privilege/util/AdvertisingIdClient$AdInfo;

    move-result-object v1

    .line 65
    .local v1, "adInfo":Lcom/samsung/privilege/util/AdvertisingIdClient$AdInfo;
    invoke-virtual {v1}, Lcom/samsung/privilege/util/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "advertisingId":Ljava/lang/String;
    const-string v12, "advertising_id"

    invoke-virtual {v7, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4b} :catch_c4

    .line 77
    .end local v1    # "adInfo":Lcom/samsung/privilege/util/AdvertisingIdClient$AdInfo;
    .end local v2    # "advertisingId":Ljava/lang/String;
    :goto_4b
    invoke-static {}, Lcom/samsung/privilege/util/RootUtil;->isDeviceRooted()Z

    move-result v4

    .line 79
    .local v4, "device_rooted":Z
    :try_start_4f
    const-string v12, "device_rooted"

    invoke-virtual {v7, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_d3

    .line 87
    :goto_54
    :try_start_54
    const-string v12, "old_imei"

    const-string v13, "rd"

    invoke-static {p0, v13}, Lcom/samsung/privilege/util/DC;->GL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v12, "old_android_id"

    const-string v13, "ad"

    invoke-static {p0, v13}, Lcom/samsung/privilege/util/DC;->GL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v12, "old_manufacturer"

    const-string v13, "mf"

    invoke-static {p0, v13}, Lcom/samsung/privilege/util/DC;->GL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v12, "old_model"

    const-string v13, "dm"

    invoke-static {p0, v13}, Lcom/samsung/privilege/util/DC;->GL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v12, "old_device_mac"

    const-string v13, "wa"

    invoke-static {p0, v13}, Lcom/samsung/privilege/util/DC;->GL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v12, "old_serial"

    const-string v13, "sn"

    invoke-static {p0, v13}, Lcom/samsung/privilege/util/DC;->GL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_96} :catch_d1

    .line 98
    :goto_96
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 25
    .end local v4    # "device_rooted":Z
    :cond_9b
    aget-object v0, v8, v6

    .line 26
    .local v0, "account":Landroid/accounts/Account;
    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v13, "com.google"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c0

    .line 27
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 28
    const-string v11, ","

    .line 24
    :cond_c0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1b

    .line 67
    .end local v0    # "account":Landroid/accounts/Account;
    :catch_c4
    move-exception v5

    .line 69
    .local v5, "e":Ljava/lang/Exception;
    :try_start_c5
    const-string v12, "advertising_id"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_cc} :catch_ce

    goto/16 :goto_4b

    .line 70
    :catch_ce
    move-exception v12

    goto/16 :goto_4b

    .line 93
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "device_rooted":Z
    :catch_d1
    move-exception v12

    goto :goto_96

    .line 80
    :catch_d3
    move-exception v12

    goto :goto_54

    .line 57
    .end local v4    # "device_rooted":Z
    :catch_d5
    move-exception v12

    goto/16 :goto_3e

    .line 49
    :catch_d8
    move-exception v12

    goto/16 :goto_35

    .line 41
    :catch_db
    move-exception v12

    goto/16 :goto_2c

    .line 33
    :catch_de
    move-exception v12

    goto/16 :goto_23
.end method
