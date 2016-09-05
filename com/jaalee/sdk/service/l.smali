.class public final Lcom/jaalee/sdk/service/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final a:Lcom/jaalee/sdk/Region;

.field public final b:Lcom/jaalee/sdk/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/jaalee/sdk/service/m;

    invoke-direct {v0}, Lcom/jaalee/sdk/service/m;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jaalee/sdk/Region;Lcom/jaalee/sdk/e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "region cannot be null"

    invoke-static {p1, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/Region;

    iput-object v0, p0, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    const-string/jumbo v0, "state cannot be null"

    invoke-static {p2, v0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaalee/sdk/e;

    iput-object v0, p0, Lcom/jaalee/sdk/service/l;->b:Lcom/jaalee/sdk/e;

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
    check-cast p1, Lcom/jaalee/sdk/service/l;

    iget-object v2, p0, Lcom/jaalee/sdk/service/l;->b:Lcom/jaalee/sdk/e;

    iget-object v3, p1, Lcom/jaalee/sdk/service/l;->b:Lcom/jaalee/sdk/e;

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p0, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    iget-object v3, p1, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v2, v3}, Lcom/jaalee/sdk/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2b
    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p1, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    if-eqz v2, :cond_4

    goto :goto_2b
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v0}, Lcom/jaalee/sdk/Region;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/jaalee/sdk/service/l;->b:Lcom/jaalee/sdk/e;

    if-eqz v2, :cond_17

    iget-object v1, p0, Lcom/jaalee/sdk/service/l;->b:Lcom/jaalee/sdk/e;

    invoke-virtual {v1}, Lcom/jaalee/sdk/e;->hashCode()I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    return v0

    :cond_19
    move v0, v1

    goto :goto_b
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "region"

    iget-object v2, p0, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "state"

    iget-object v2, p0, Lcom/jaalee/sdk/service/l;->b:Lcom/jaalee/sdk/e;

    invoke-virtual {v2}, Lcom/jaalee/sdk/e;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaalee/sdk/internal/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/jaalee/sdk/service/l;->a:Lcom/jaalee/sdk/Region;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/jaalee/sdk/service/l;->b:Lcom/jaalee/sdk/e;

    invoke-virtual {v0}, Lcom/jaalee/sdk/e;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
