.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/google/android/gms/common/ConnectionResult;


# instance fields
.field final b:I

.field private final c:I

.field private final d:Landroid/app/PendingIntent;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->c:I

    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_82

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :sswitch_21
    const-string/jumbo v0, "SUCCESS"

    goto :goto_20

    :sswitch_25
    const-string/jumbo v0, "SERVICE_MISSING"

    goto :goto_20

    :sswitch_29
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_20

    :sswitch_2d
    const-string/jumbo v0, "SERVICE_DISABLED"

    goto :goto_20

    :sswitch_31
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    goto :goto_20

    :sswitch_35
    const-string/jumbo v0, "INVALID_ACCOUNT"

    goto :goto_20

    :sswitch_39
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    goto :goto_20

    :sswitch_3d
    const-string/jumbo v0, "NETWORK_ERROR"

    goto :goto_20

    :sswitch_41
    const-string/jumbo v0, "INTERNAL_ERROR"

    goto :goto_20

    :sswitch_45
    const-string/jumbo v0, "SERVICE_INVALID"

    goto :goto_20

    :sswitch_49
    const-string/jumbo v0, "DEVELOPER_ERROR"

    goto :goto_20

    :sswitch_4d
    const-string/jumbo v0, "LICENSE_CHECK_FAILED"

    goto :goto_20

    :sswitch_51
    const-string/jumbo v0, "CANCELED"

    goto :goto_20

    :sswitch_55
    const-string/jumbo v0, "TIMEOUT"

    goto :goto_20

    :sswitch_59
    const-string/jumbo v0, "INTERRUPTED"

    goto :goto_20

    :sswitch_5d
    const-string/jumbo v0, "API_UNAVAILABLE"

    goto :goto_20

    :sswitch_61
    const-string/jumbo v0, "SIGN_IN_FAILED"

    goto :goto_20

    :sswitch_65
    const-string/jumbo v0, "SERVICE_UPDATING"

    goto :goto_20

    :sswitch_69
    const-string/jumbo v0, "SERVICE_MISSING_PERMISSION"

    goto :goto_20

    :sswitch_6d
    const-string/jumbo v0, "RESTRICTED_PROFILE"

    goto :goto_20

    :sswitch_71
    const-string/jumbo v0, "API_VERSION_UPDATE_REQUIRED"

    goto :goto_20

    :sswitch_75
    const-string/jumbo v0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    goto :goto_20

    :sswitch_79
    const-string/jumbo v0, "UNFINISHED"

    goto :goto_20

    :sswitch_7d
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_20

    nop

    :sswitch_data_82
    .sparse-switch
        -0x1 -> :sswitch_7d
        0x0 -> :sswitch_21
        0x1 -> :sswitch_25
        0x2 -> :sswitch_29
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_31
        0x5 -> :sswitch_35
        0x6 -> :sswitch_39
        0x7 -> :sswitch_3d
        0x8 -> :sswitch_41
        0x9 -> :sswitch_45
        0xa -> :sswitch_49
        0xb -> :sswitch_4d
        0xd -> :sswitch_51
        0xe -> :sswitch_55
        0xf -> :sswitch_59
        0x10 -> :sswitch_5d
        0x11 -> :sswitch_61
        0x12 -> :sswitch_65
        0x13 -> :sswitch_69
        0x14 -> :sswitch_6d
        0x15 -> :sswitch_71
        0x63 -> :sswitch_79
        0x5dc -> :sswitch_75
    .end sparse-switch
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->c:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->c:I

    return v0
.end method

.method public d()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/common/ConnectionResult;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->c:I

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->c:I

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->d:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzz;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzz;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzz;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string/jumbo v1, "statusCode"

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->c:I

    invoke-static {v2}, Lcom/google/android/gms/common/ConnectionResult;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string/jumbo v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzz$zza;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzz$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzz$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/zzb;->a(Lcom/google/android/gms/common/ConnectionResult;Landroid/os/Parcel;I)V

    return-void
.end method
