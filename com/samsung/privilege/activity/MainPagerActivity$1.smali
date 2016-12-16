.class Lcom/samsung/privilege/activity/MainPagerActivity$1;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/bean/MessageGCM;

.field final synthetic b:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/MessageGCM;)V
    .registers 3

    .prologue
    .line 196
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 198
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ewallet_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "ewallet_refund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 199
    :cond_28
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 200
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v1, v1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    :cond_46
    :goto_46
    return-void

    .line 201
    :cond_47
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "message_beacon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 202
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 203
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v1, v1, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_46

    .line 204
    :cond_73
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "queue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 205
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "modules/queue/user?date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&current=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    .line 209
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 210
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    .line 212
    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 213
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$1$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    .line 214
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_46

    .line 240
    :cond_106
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 242
    :cond_119
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->type:Ljava/lang/String;

    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 245
    :try_start_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->a:Lcom/bzbs/bean/MessageGCM;

    iget-object v0, v0, Lcom/bzbs/bean/MessageGCM;->subject:Ljava/lang/String;

    const-string/jumbo v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 246
    array-length v1, v0

    if-ne v1, v3, :cond_46

    .line 247
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "campaignId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 248
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    const-string/jumbo v2, "campaign_id"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    :cond_166
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "campaignbzbId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    .line 253
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    new-instance v2, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 255
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 256
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 257
    const-string/jumbo v4, "ItemMarketPlace"

    invoke-static {v2}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 258
    const-string/jumbo v2, "ItemMarketPlace::Ads::Ins"

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 260
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 262
    :cond_1a8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "dashboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    .line 263
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    const-string/jumbo v2, "dashboard_key"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 267
    :cond_1cf
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ef

    .line 268
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 269
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    :cond_1ef
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "categoryId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 272
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    const-string/jumbo v2, "category_noti"

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$1;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_216} :catch_218

    goto/16 :goto_46

    .line 277
    :catch_218
    move-exception v0

    goto/16 :goto_46
.end method
