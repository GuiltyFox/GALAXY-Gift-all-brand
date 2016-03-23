.class public Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;
.super Ljava/lang/Object;
.source "Subitem.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    value = .enum Lorg/parceler/Parcel$Serialization;->BEAN:Lorg/parceler/Parcel$Serialization;
.end annotation


# static fields
.field static final FIELD_CAMPAIGN_ID:Ljava/lang/String; = "campaignId"

.field static final FIELD_NAME:Ljava/lang/String; = "name"

.field static final FIELD_POStringS:Ljava/lang/String; = "poStrings"

.field static final FIELD_PRICE:Ljava/lang/String; = "price"

.field static final FIELD_QUANTITY:Ljava/lang/String; = "quantity"

.field static final FIELD_TYPE:Ljava/lang/String; = "type"

.field static final FIELD_VALUE:Ljava/lang/String; = "value"


# instance fields
.field mCampaignId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "campaignId"
    .end annotation
.end field

.field mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field mPoString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "poStrings"
    .end annotation
.end field

.field mPrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field mQuantity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quantity"
    .end annotation
.end field

.field mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field mValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mCampaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPoString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mPoString:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mQuantity:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .registers 2
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mCampaignId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPoString(Ljava/lang/String;)V
    .registers 2
    .param p1, "poString"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mPoString:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mPrice:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setQuantity(Ljava/lang/String;)V
    .registers 2
    .param p1, "quantity"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mQuantity:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mType:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mValue:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", poString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mPoString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", price = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", campaignId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mCampaignId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", quantity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;->mQuantity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
