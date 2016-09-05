.class public Lcom/jaalee/sdk/Region;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Integer;

.field private final d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/jaalee/sdk/d;

    invoke-direct {v0}, Lcom/jaalee/sdk/d;-><init>()V

    sput-object v0, Lcom/jaalee/sdk/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/Region;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/Region;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_20

    move-object v0, v1

    :cond_20
    iput-object v0, p0, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_33

    :goto_30
    iput-object v1, p0, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    return-void

    :cond_33
    move-object v1, v0

    goto :goto_30
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jaalee/sdk/Region;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/jaalee/sdk/Region;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public describeContents()I
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
    check-cast p1, Lcom/jaalee/sdk/Region;

    iget-object v2, p0, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_23
    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p1, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    if-nez v2, :cond_23

    :cond_29
    iget-object v2, p0, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    :cond_37
    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p1, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    if-nez v2, :cond_37

    :cond_3d
    iget-object v2, p0, Lcom/jaalee/sdk/Region;->b:Ljava/lang/String;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/jaalee/sdk/Region;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/jaalee/sdk/Region;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_4b
    move v0, v1

    goto :goto_4

    :cond_4d
    iget-object v2, p1, Lcom/jaalee/sdk/Region;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_4b
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->b:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_24

    iget-object v1, p0, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_24
    add-int/2addr v0, v1

    return v0

    :cond_26
    move v0, v1

    goto :goto_b

    :cond_28
    move v0, v1

    goto :goto_17
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "identifier"

    iget-object v2, p0, Lcom/jaalee/sdk/Region;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "proximityUUID"

    iget-object v2, p0, Lcom/jaalee/sdk/Region;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "major"

    iget-object v2, p0, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "minor"

    iget-object v2, p0, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaalee/sdk/internal/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    if-nez v0, :cond_22

    :goto_17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/jaalee/sdk/Region;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_10

    :cond_22
    iget-object v0, p0, Lcom/jaalee/sdk/Region;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_17
.end method
