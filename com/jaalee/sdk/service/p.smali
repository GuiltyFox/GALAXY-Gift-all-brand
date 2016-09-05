.class public final Lcom/jaalee/sdk/service/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final a:Lcom/jaalee/sdk/Region;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/jaalee/sdk/service/q;

    invoke-direct {v0}, Lcom/jaalee/sdk/service/q;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jaalee/sdk/Region;Ljava/util/Collection;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "region cannot be null"

    invoke-static {p1, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/Region;

    iput-object v0, p0, Lcom/jaalee/sdk/service/p;->a:Lcom/jaalee/sdk/Region;

    new-instance v1, Ljava/util/ArrayList;

    const-string/jumbo v0, "beacons cannot be null"

    invoke-static {p2, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/service/p;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/jaalee/sdk/service/p;

    iget-object v2, p0, Lcom/jaalee/sdk/service/p;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/jaalee/sdk/service/p;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/jaalee/sdk/service/p;->a:Lcom/jaalee/sdk/Region;

    iget-object v3, p1, Lcom/jaalee/sdk/service/p;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v2, v3}, Lcom/jaalee/sdk/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/jaalee/sdk/service/p;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v0}, Lcom/jaalee/sdk/Region;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jaalee/sdk/service/p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "region"

    iget-object v2, p0, Lcom/jaalee/sdk/service/p;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "beacons"

    iget-object v2, p0, Lcom/jaalee/sdk/service/p;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaalee/sdk/internal/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/jaalee/sdk/service/p;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/p;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
