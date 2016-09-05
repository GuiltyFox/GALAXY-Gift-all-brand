.class public Lcom/bzbs/marketplace/model/marketplace/detail/Style;
.super Ljava/lang/Object;
.source "Style.java"


# static fields
.field public static final FIELD_CAMPAIGN_ID:Ljava/lang/String; = "campaignId"

.field public static final FIELD_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_POStringS:Ljava/lang/String; = "poStrings"

.field public static final FIELD_PRICE:Ljava/lang/String; = "price"

.field public static final FIELD_QUANTITY:Ljava/lang/String; = "quantity"

.field public static final FIELD_SUBITEMS:Ljava/lang/String; = "subitems"

.field public static final FIELD_VALUE:Ljava/lang/String; = "value"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "value"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "poStrings"
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "subitems"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "price"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "campaignId"
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "name"
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "quantity"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getCampaignId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPoString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSubitems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->c:Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->e:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->f:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPoString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->d:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setQuantity(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->g:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSubitems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->c:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", poString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subitems = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", price = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", campaignId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", quantity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
