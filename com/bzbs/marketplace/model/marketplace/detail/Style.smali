.class public Lcom/bzbs/marketplace/model/marketplace/detail/Style;
.super Ljava/lang/Object;
.source "Style.java"


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

.field static final FIELD_SUBITEMS:Ljava/lang/String; = "subitems"

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

.field mSubitems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subitems"
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

.field mValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mCampaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPoString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mPoString:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mQuantity:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mSubitems:Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .registers 2
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mCampaignId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPoString(Ljava/lang/String;)V
    .registers 2
    .param p1, "poString"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mPoString:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 2
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mPrice:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setQuantity(Ljava/lang/String;)V
    .registers 2
    .param p1, "quantity"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mQuantity:Ljava/lang/String;

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
    .local p1, "subitems":Ljava/util/List;, "Ljava/util/List<Lcom/bzbs/marketplace/model/marketplace/detail/Subitem;>;"
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mSubitems:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mValue:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", poString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mPoString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subitems = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mSubitems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", price = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", campaignId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mCampaignId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", quantity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/model/marketplace/detail/Style;->mQuantity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
