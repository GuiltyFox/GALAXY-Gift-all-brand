.class public Lcom/bzbs/marketplace/model/url/UrlModel;
.super Ljava/lang/Object;
.source "UrlModel.java"


# static fields
.field private static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final KEY_AFTER:Ljava/lang/String; = "after"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_BUZZ:Ljava/lang/String; = "keyBuzz"

.field private static final KEY_CAMPAIGN:Ljava/lang/String; = "campaign"

.field private static final KEY_CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field private static final KEY_CATEGORY:Ljava/lang/String; = "cate"

.field private static final KEY_CONFIG:Ljava/lang/String; = "config"

.field private static final KEY_DATE:Ljava/lang/String; = "date"

.field private static final KEY_DEVICE_APP_ID:Ljava/lang/String; = "device_app_id"

.field private static final KEY_DEVICE_LOCALE:Ljava/lang/String; = "device_locale"

.field private static final KEY_FACEBOOK_ID:Ljava/lang/String; = "facebook_id"

.field private static final KEY_FIELD:Ljava/lang/String; = "fields"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_KEYWORD:Ljava/lang/String; = "keyword"

.field private static final KEY_LIMIT:Ljava/lang/String; = "limit"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "notification_id"

.field private static final KEY_OBJECT_ID:Ljava/lang/String; = "object_id"

.field private static final KEY_PAGE:Ljava/lang/String; = "page"

.field private static final KEY_PAGE_ID:Ljava/lang/String; = "page_id"

.field private static final KEY_POST_ID:Ljava/lang/String; = "post_id"

.field private static final KEY_PRETTY:Ljava/lang/String; = "pretty"

.field private static final KEY_ROW_KEY:Ljava/lang/String; = "rowKey"

.field private static final KEY_SKIP:Ljava/lang/String; = "skip"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final KEY_USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 255
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/profile/me/picture?time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&type=large&token={token}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v2

    const-string/jumbo v3, "token"

    .line 259
    invoke-virtual {v2, v3, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v2

    .line 260
    invoke-virtual {v2}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getUrlAddCart(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/cart/{campaign_id}/add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "campaign_id"

    .line 245
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlBasketToolbar(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "TokenBuzzeBeesForBuyPoint"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "payment/ShoppingCart.aspx?token={token}&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 62
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlBuyPoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "campaignId"    # Ljava/lang/String;
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "payment/AddItem.aspx?id={id}&token={token}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "id"

    .line 84
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 85
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/profile/me/help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlCountCart(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/cart/count?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrlDashboard(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/main/dashboard?&app_name={app_name}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "app_name"

    .line 77
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlImageProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 50
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "mDate":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/profile/{id}/picture/{date}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v3

    const-string/jumbo v4, "id"

    .line 54
    invoke-virtual {v3, v4, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v3

    const-string/jumbo v4, "date"

    .line 55
    invoke-virtual {v3, v4, v1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getUrlLikeMarketDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "idCampaign"    # Ljava/lang/String;
    .param p1, "tokenBuzz"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaign/{campaign}/likes?token={token}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "campaign"

    .line 143
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 144
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlMarketPlaceDetail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "idCampaign"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaign/{campaign}?token={token}&format=json&type=full&device_locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "campaign"

    .line 135
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 136
    invoke-virtual {v1, v2, p2}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlMarketPlaceList(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "tokenBuzz"    # Ljava/lang/String;
    .param p2, "appIdFacebook"    # Ljava/lang/String;
    .param p3, "categoryId"    # Ljava/lang/String;
    .param p4, "config"    # Ljava/lang/String;
    .param p5, "skip"    # Ljava/lang/String;
    .param p6, "keyword"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaign?token={token}&device_app_id={device_app_id}&device_locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&cat={cate}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_3b
    if-nez p6, :cond_40

    .line 96
    const-string/jumbo p6, ""

    .line 99
    :cond_40
    const-string/jumbo v1, " "

    const-string/jumbo v2, "%20"

    invoke-virtual {p6, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p6

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&byConfig=true&config={config}&$skip={skip}&q={keyword}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 103
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "device_app_id"

    .line 104
    invoke-virtual {v1, v2, p2}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "cate"

    .line 105
    invoke-virtual {v1, v2, p3}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "config"

    .line 106
    invoke-virtual {v1, v2, p4}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "skip"

    .line 107
    invoke-virtual {v1, v2, p5}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "keyword"

    .line 108
    invoke-virtual {v1, v2, p6}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlMarketPlaceMenu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "config"    # Ljava/lang/String;
    .param p1, "appIdFacebook"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaigncat/menu?config={config}&device_app_id={device_app_id}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "config"

    .line 115
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "device_app_id"

    .line 116
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlMarketPlaceMenuCampaign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "tokenBuzz"    # Ljava/lang/String;
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "appIdFacebook"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaigncat/menu_campaigns?config={config}&token={token}&device_app_id={device_app_id}&top=6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 123
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "config"

    .line 124
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "device_app_id"

    .line 125
    invoke-virtual {v1, v2, p2}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlPoint(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/profile/me/updated_points?token={token}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 219
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/profile/me/user?token={token}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 236
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "page"    # I

    .prologue
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/redeem?token={token}&device_app_id={device_app_id}&config={config}&byConfig=true&$skip={page}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 158
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "device_app_id"

    .line 159
    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "config"

    .line 160
    invoke-virtual {v1, v2, p2}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "page"

    .line 161
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "keyBuzz"    # Ljava/lang/String;
    .param p2, "rowKey"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/buzz/{keyBuzz}/comments?token={token}&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_2c

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&lastRowKey={rowKey}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_2c
    if-nez p2, :cond_31

    .line 180
    const-string/jumbo p2, ""

    .line 182
    :cond_31
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 183
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "keyBuzz"

    .line 184
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "rowKey"

    .line 185
    invoke-virtual {v1, v2, p2}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlRequestHelp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "user_id"    # Ljava/lang/String;
    .param p2, "rowKey"    # Ljava/lang/String;

    .prologue
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/buzz/f-{user_id}/list?token={token}&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_2c

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&lastRowKey={rowKey}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_2c
    if-nez p2, :cond_31

    .line 280
    const-string/jumbo p2, ""

    .line 282
    :cond_31
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 283
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    .line 284
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "rowKey"

    .line 285
    invoke-virtual {v1, v2, p2}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rowKey"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaign/{id}/buzz?token={token}&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_2c

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&lastRowKey={rowKey}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_2c
    if-nez p2, :cond_31

    .line 196
    const-string/jumbo p2, ""

    .line 198
    :cond_31
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 199
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "id"

    .line 200
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "rowKey"

    .line 201
    invoke-virtual {v1, v2, p2}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlReviewSurvey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaign/{id}/buzz_template"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "id"

    .line 210
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlReviewUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "keyBuzz"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/buzz/{keyBuzz}?token={token}&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 168
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "keyBuzz"

    .line 169
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlShare(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "postId"    # Ljava/lang/String;
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/facebook/share?post_id={post_id}_{campaign_id}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "post_id"

    .line 227
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "campaign_id"

    .line 228
    invoke-virtual {v1, v2, p1}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlShared(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "tokenBuzz"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/facebook/dialog/feed?token={token}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 151
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlUser(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/profile/me/user?token={token}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 70
    invoke-virtual {v1, v2, p0}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUrlWinner(Landroid/app/Activity;)Ljava/lang/String;
    .registers 5
    .param p0, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/rank/winners?token={token}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/marketplace/util/Phrase;->init(Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    const-string/jumbo v2, "token"

    .line 266
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/marketplace/util/Phrase;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/util/Phrase;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Lcom/bzbs/marketplace/util/Phrase;->commit()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
