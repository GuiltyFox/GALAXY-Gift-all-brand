.class Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;
.super Ljava/lang/Object;
.source "MarketPlaceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a(Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

.field final synthetic b:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;)V
    .registers 3

    .prologue
    .line 213
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 216
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11f

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    .line 217
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 219
    :try_start_45
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->a:Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getWebsite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4e} :catch_14d

    move-result-object v0

    .line 223
    :try_start_4f
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v2, v2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 224
    const-string/jumbo v2, "<deviceId>"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_66} :catch_152

    move-result-object v0

    .line 229
    :goto_67
    :try_start_67
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8d

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_8d
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_120

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_c1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v2, v2, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v2}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    const-string/jumbo v2, "Adapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "goBuyMarketPlace|url := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 251
    :cond_11f
    :goto_11f
    return-void

    .line 235
    :cond_120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$1;->b:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v1, v1, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_14a} :catch_14d

    move-result-object v0

    goto/16 :goto_c1

    .line 244
    :catch_14d
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11f

    .line 225
    :catch_152
    move-exception v1

    goto/16 :goto_67
.end method
