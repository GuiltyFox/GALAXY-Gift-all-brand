.class public Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;
.super Ljava/lang/Object;
.source "MarketPlaceMenuModel.java"


# instance fields
.field count:Ljava/lang/String;

.field id:Ljava/lang/String;

.field image_url:Ljava/lang/String;

.field list_config:Ljava/lang/String;

.field mode:Ljava/lang/String;

.field name:Ljava/lang/String;

.field name_en:Ljava/lang/String;

.field name_th:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->mode:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->list_config:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->name:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->count:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->name_th:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->id:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->name_en:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->image_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->id:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->id:Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->id:Ljava/lang/String;

    goto :goto_9
.end method

.method public getImage_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getList_config()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->list_config:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getName_en()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->name_en:Ljava/lang/String;

    return-object v0
.end method

.method public getName_th()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->name_th:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .registers 2
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->count:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->id:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setImage_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "image_url"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->image_url:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setList_config(Ljava/lang/String;)V
    .registers 2
    .param p1, "list_config"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->list_config:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->mode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setName_en(Ljava/lang/String;)V
    .registers 2
    .param p1, "name_en"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->name_en:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setName_th(Ljava/lang/String;)V
    .registers 2
    .param p1, "name_th"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;->name_th:Ljava/lang/String;

    .line 45
    return-void
.end method
