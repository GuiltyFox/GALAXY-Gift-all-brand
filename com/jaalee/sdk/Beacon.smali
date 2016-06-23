.class public Lcom/jaalee/sdk/Beacon;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final battLevel:I

.field private final mConectable:I

.field private final macAddress:Ljava/lang/String;

.field private final major:I

.field private final measuredPower:I

.field private final minor:I

.field private final name:Ljava/lang/String;

.field private final proximityUUID:Ljava/lang/String;

.field private final rssi:I


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

    iput-object v0, p0, Lcom/jaalee/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/Beacon;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/Beacon;->macAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->major:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->minor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->measuredPower:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->rssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->battLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaalee/sdk/Beacon;->mConectable:I

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

    invoke-static {p1}, Lcom/jaalee/sdk/Utils;->normalizeProximityUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaalee/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/jaalee/sdk/Beacon;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/jaalee/sdk/Beacon;->macAddress:Ljava/lang/String;

    iput p4, p0, Lcom/jaalee/sdk/Beacon;->major:I

    iput p5, p0, Lcom/jaalee/sdk/Beacon;->minor:I

    iput p6, p0, Lcom/jaalee/sdk/Beacon;->measuredPower:I

    iput p7, p0, Lcom/jaalee/sdk/Beacon;->rssi:I

    iput p8, p0, Lcom/jaalee/sdk/Beacon;->battLevel:I

    iput p9, p0, Lcom/jaalee/sdk/Beacon;->mConectable:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

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

    iget v1, p0, Lcom/jaalee/sdk/Beacon;->major:I

    iget v2, p1, Lcom/jaalee/sdk/Beacon;->major:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/jaalee/sdk/Beacon;->minor:I

    iget v2, p1, Lcom/jaalee/sdk/Beacon;->minor:I

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    iget-object v1, p1, Lcom/jaalee/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getBattLevel()I
    .registers 2

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->battLevel:I

    return v0
.end method

.method public getConnectable()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/jaalee/sdk/Beacon;->mConectable:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .registers 2

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->major:I

    return v0
.end method

.method public getMeasuredPower()I
    .registers 2

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->measuredPower:I

    return v0
.end method

.method public getMinor()I
    .registers 2

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->minor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProximityUUID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .registers 2

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->rssi:I

    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jaalee/sdk/Beacon;->major:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jaalee/sdk/Beacon;->minor:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/jaalee/sdk/internal/e;->a(Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "macAddress"

    iget-object v2, p0, Lcom/jaalee/sdk/Beacon;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "proximityUUID"

    iget-object v2, p0, Lcom/jaalee/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "major"

    iget v2, p0, Lcom/jaalee/sdk/Beacon;->major:I

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "minor"

    iget v2, p0, Lcom/jaalee/sdk/Beacon;->minor:I

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "measuredPower"

    iget v2, p0, Lcom/jaalee/sdk/Beacon;->measuredPower:I

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "rssi"

    iget v2, p0, Lcom/jaalee/sdk/Beacon;->rssi:I

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    const-string/jumbo v1, "battLevel"

    iget v2, p0, Lcom/jaalee/sdk/Beacon;->battLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/jaalee/sdk/internal/f;->a(Ljava/lang/String;I)Lcom/jaalee/sdk/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaalee/sdk/internal/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->proximityUUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jaalee/sdk/Beacon;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->major:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->minor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->measuredPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->battLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/jaalee/sdk/Beacon;->mConectable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
