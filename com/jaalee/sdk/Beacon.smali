.class public Lcom/jaalee/sdk/Beacon;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/jaalee/sdk/a;

    invoke-direct {v0}, Lcom/jaalee/sdk/a;-><init>()V

    sput-object v0, Lcom/jaalee/sdk/Beacon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/Beacon;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/Beacon;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/Beacon;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->i:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jaalee/sdk/Beacon;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/jaalee/sdk/Beacon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/jaalee/sdk/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/Beacon;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/jaalee/sdk/Beacon;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/jaalee/sdk/Beacon;->c:Ljava/lang/String;

    iput p4, p0, Lcom/jaalee/sdk/Beacon;->d:I

    iput p5, p0, Lcom/jaalee/sdk/Beacon;->e:I

    iput p6, p0, Lcom/jaalee/sdk/Beacon;->f:I

    iput p7, p0, Lcom/jaalee/sdk/Beacon;->g:I

    iput p8, p0, Lcom/jaalee/sdk/Beacon;->h:I

    iput p9, p0, Lcom/jaalee/sdk/Beacon;->i:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->d:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->e:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->f:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->g:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    check-cast p1, Lcom/jaalee/sdk/Beacon;

    iget v1, p0, Lcom/jaalee/sdk/Beacon;->d:I

    iget v2, p1, Lcom/jaalee/sdk/Beacon;->d:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/jaalee/sdk/Beacon;->e:I

    iget v2, p1, Lcom/jaalee/sdk/Beacon;->e:I

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/jaalee/sdk/Beacon;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jaalee/sdk/Beacon;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jaalee/sdk/Beacon;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "macAddress"

    iget-object v2, p0, Lcom/jaalee/sdk/Beacon;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "proximityUUID"

    iget-object v2, p0, Lcom/jaalee/sdk/Beacon;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "major"

    iget v2, p0, Lcom/jaalee/sdk/Beacon;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "minor"

    iget v2, p0, Lcom/jaalee/sdk/Beacon;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "measuredPower"

    iget v2, p0, Lcom/jaalee/sdk/Beacon;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "rssi"

    iget v2, p0, Lcom/jaalee/sdk/Beacon;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "battLevel"

    iget v2, p0, Lcom/jaalee/sdk/Beacon;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaalee/sdk/internal/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
