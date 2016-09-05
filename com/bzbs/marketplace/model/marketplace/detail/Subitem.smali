.class public Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;
.super Ljava/lang/Object;
.source "Subitem.java"


# static fields
.field public static final FIELD_CAMPAIGN_ID:Ljava/lang/String; = "campaignId"

.field public static final FIELD_NAME:Ljava/lang/String; = "name"

.field public static final FIELD_POStringS:Ljava/lang/String; = "poStrings"

.field public static final FIELD_PRICE:Ljava/lang/String; = "price"

.field public static final FIELD_QUANTITY:Ljava/lang/String; = "quantity"

.field public static final FIELD_TYPE:Ljava/lang/String; = "type"

.field public static final FIELD_VALUE:Ljava/lang/String; = "value"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "value"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "type"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "poStrings"
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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getCampaignId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPoString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->e:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->f:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPoString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->c:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setQuantity(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->g:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", poString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", price = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", campaignId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", quantity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
