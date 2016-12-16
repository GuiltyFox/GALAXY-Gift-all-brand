.class Lcom/samsung/privilege/util/DialogLoginGift$25$1;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$25;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/util/DialogLoginGift$25;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$25;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 1383
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1384
    const-string/jumbo v3, "Address"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1387
    if-eqz v3, :cond_24

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 1388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/bzbs/data/UserLogin;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1390
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const-string/jumbo v4, "ShippingFirstName"

    invoke-static {v2, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const-string/jumbo v4, "ShippingLastName"

    invoke-static {v2, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->h(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1393
    const-string/jumbo v3, "ShippingFirstName"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1394
    const-string/jumbo v3, "ShippingLastName"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1395
    const-string/jumbo v3, "Email"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1396
    const-string/jumbo v3, "Gender"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1397
    const-string/jumbo v3, "Region"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1398
    const-string/jumbo v3, "Address"

    invoke-static {v2, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1399
    const-string/jumbo v4, "BirthDate"

    invoke-static {v2, v4}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    .line 1400
    const-string/jumbo v4, "Contact_Number"

    invoke-static {v2, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1401
    const-string/jumbo v4, "PhonePurchase"

    invoke-static {v2, v4}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v13

    .line 1402
    const-string/jumbo v4, "Income"

    invoke-static {v2, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1403
    const-string/jumbo v4, "Interests"

    invoke-static {v2, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1405
    if-eqz v6, :cond_199

    const-string/jumbo v4, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_199

    if-eqz v7, :cond_199

    const-string/jumbo v4, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_199

    if-eqz v10, :cond_199

    const-string/jumbo v4, ""

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_199

    if-eqz v11, :cond_199

    const-string/jumbo v4, ""

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_199

    if-eqz v12, :cond_199

    const-string/jumbo v4, ""

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_199

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-eqz v4, :cond_199

    const-wide/16 v4, 0x0

    cmp-long v4, v13, v4

    if-eqz v4, :cond_199

    .line 1406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Z)Z

    .line 1411
    :goto_de
    if-eqz v15, :cond_1cf

    const-string/jumbo v4, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1cf

    if-eqz v16, :cond_1cf

    const-string/jumbo v4, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1cf

    if-eqz v17, :cond_1cf

    const-string/jumbo v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1cf

    .line 1412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Z)Z

    .line 1417
    :goto_10d
    if-eqz v6, :cond_1db

    const-string/jumbo v4, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1db

    if-eqz v7, :cond_1db

    const-string/jumbo v4, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1db

    if-eqz v3, :cond_1db

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1db

    .line 1418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Z)Z

    .line 1423
    :goto_138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const-string/jumbo v4, "Locale"

    invoke-static {v2, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/util/GCMUtil;->a(Landroid/content/Context;)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1fc

    .line 1432
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Z)Z

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->d:Ljava/lang/String;

    const-string/jumbo v3, "1"

    if-ne v2, v3, :cond_1e7

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/LoginEvents;->a(Ljava/lang/String;)V

    .line 1462
    :cond_198
    :goto_198
    return-void

    .line 1408
    :cond_199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Z)Z
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a3} :catch_1a5

    goto/16 :goto_de

    .line 1458
    :catch_1a5
    move-exception v2

    .line 1459
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while load profile data.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->U(Landroid/content/Context;)V

    goto :goto_198

    .line 1414
    :cond_1cf
    :try_start_1cf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Z)Z

    goto/16 :goto_10d

    .line 1420
    :cond_1db
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Z)Z

    goto/16 :goto_138

    .line 1439
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->d:Ljava/lang/String;

    const-string/jumbo v3, "2"

    if-ne v2, v3, :cond_198

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/LoginEvents;->b(Ljava/lang/String;)V

    goto :goto_198

    .line 1443
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22c

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$25;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$25;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v5, v5, Lcom/samsung/privilege/util/DialogLoginGift$25;->b:Landroid/os/Handler;

    invoke-static/range {v2 .. v17}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_198

    .line 1446
    :cond_22c
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Z)Z

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->d:Ljava/lang/String;

    const-string/jumbo v3, "1"

    if-ne v2, v3, :cond_25c

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/LoginEvents;->a(Ljava/lang/String;)V

    goto/16 :goto_198

    .line 1453
    :cond_25c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->d:Ljava/lang/String;

    const-string/jumbo v3, "2"

    if-ne v2, v3, :cond_198

    .line 1454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/LoginEvents;->b(Ljava/lang/String;)V
    :try_end_270
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_270} :catch_1a5

    goto/16 :goto_198
.end method
