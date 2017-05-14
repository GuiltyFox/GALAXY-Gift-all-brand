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
    .line 1384
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 1388
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->a:Ljava/lang/String;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1389
    const-string/jumbo v2, "Address"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1392
    if-eqz v2, :cond_24

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 1393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1395
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const-string/jumbo v4, "ShippingFirstName"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bzbs/data/UserLogin;->h(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const-string/jumbo v4, "ShippingLastName"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bzbs/data/UserLogin;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1398
    const-string/jumbo v2, "ShippingFirstName"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1399
    const-string/jumbo v2, "ShippingLastName"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1400
    const-string/jumbo v2, "Email"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1401
    const-string/jumbo v2, "Gender"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1402
    const-string/jumbo v2, "Region"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1403
    const-string/jumbo v2, "Address"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1404
    const-string/jumbo v2, "BirthDate"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    .line 1405
    const-string/jumbo v2, "Contact_Number"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1406
    const-string/jumbo v2, "PhonePurchase"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v13

    .line 1407
    const-string/jumbo v2, "Income"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1408
    const-string/jumbo v2, "Interests"

    invoke-static {v3, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1410
    if-eqz v6, :cond_20b

    const-string/jumbo v2, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20b

    if-eqz v7, :cond_20b

    const-string/jumbo v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20b

    if-eqz v10, :cond_20b

    const-string/jumbo v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20b

    if-eqz v11, :cond_20b

    const-string/jumbo v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20b

    if-eqz v12, :cond_20b

    const-string/jumbo v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20b

    const-wide/16 v4, 0x0

    cmp-long v2, v8, v4

    if-eqz v2, :cond_20b

    const-wide/16 v4, 0x0

    cmp-long v2, v13, v4

    if-eqz v2, :cond_20b

    .line 1411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Z)Z

    .line 1416
    :goto_dd
    if-eqz v15, :cond_241

    const-string/jumbo v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_241

    if-eqz v16, :cond_241

    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_241

    if-eqz v17, :cond_241

    const-string/jumbo v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_241

    .line 1417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;Z)Z

    .line 1422
    :goto_10c
    const/4 v2, 0x1

    .line 1423
    const-string/jumbo v4, "ShippingFirstName"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13d

    const-string/jumbo v4, "ShippingLastName"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13d

    const-string/jumbo v4, "ShippingAddress"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13e

    .line 1424
    :cond_13d
    const/4 v2, 0x0

    .line 1426
    :cond_13e
    const-string/jumbo v4, "ShippingProvinceCode"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15e

    const-string/jumbo v4, "ShippingProvinceName"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15f

    .line 1427
    :cond_15e
    const/4 v2, 0x0

    .line 1429
    :cond_15f
    const-string/jumbo v4, "ShippingDistrictCode"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17f

    const-string/jumbo v4, "ShippingDistrictName"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_180

    .line 1430
    :cond_17f
    const/4 v2, 0x0

    .line 1432
    :cond_180
    const-string/jumbo v4, "ShippingSubDistrictCode"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a0

    const-string/jumbo v4, "ShippingSubDistrictName"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a1

    .line 1433
    :cond_1a0
    const/4 v2, 0x0

    .line 1435
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/bzbs/data/UserLogin;->h(Landroid/content/Context;Z)Z

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const-string/jumbo v4, "Locale"

    invoke-static {v3, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/util/GCMUtil;->a(Landroid/content/Context;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->h(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_262

    .line 1443
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->W(Landroid/content/Context;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Z)Z

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->d:Ljava/lang/String;

    const-string/jumbo v3, "1"

    if-ne v2, v3, :cond_24d

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/LoginEvents;->a(Ljava/lang/String;)V

    .line 1473
    :cond_20a
    :goto_20a
    return-void

    .line 1413
    :cond_20b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Z)Z
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_215} :catch_217

    goto/16 :goto_dd

    .line 1469
    :catch_217
    move-exception v2

    .line 1470
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

    .line 1471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->X(Landroid/content/Context;)V

    goto :goto_20a

    .line 1419
    :cond_241
    :try_start_241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;Z)Z

    goto/16 :goto_10c

    .line 1450
    :cond_24d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->d:Ljava/lang/String;

    const-string/jumbo v3, "2"

    if-ne v2, v3, :cond_20a

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/LoginEvents;->b(Ljava/lang/String;)V

    goto :goto_20a

    .line 1454
    :cond_262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_292

    .line 1455
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

    goto/16 :goto_20a

    .line 1457
    :cond_292
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->W(Landroid/content/Context;)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Z)Z

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->d:Ljava/lang/String;

    const-string/jumbo v3, "1"

    if-ne v2, v3, :cond_2c2

    .line 1463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/LoginEvents;->a(Ljava/lang/String;)V

    goto/16 :goto_20a

    .line 1464
    :cond_2c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->d:Ljava/lang/String;

    const-string/jumbo v3, "2"

    if-ne v2, v3, :cond_20a

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/util/DialogLoginGift$25$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$25;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$25;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/event/LoginEvents;->b(Ljava/lang/String;)V
    :try_end_2d6
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_2d6} :catch_217

    goto/16 :goto_20a
.end method
