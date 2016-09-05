.class public Lcom/google/android/gms/common/zzd;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/common/zzd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzd;->a:Lcom/google/android/gms/common/zzd;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/common/zzd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/zzd;->a:Lcom/google/android/gms/common/zzd;

    return-object v0
.end method


# virtual methods
.method varargs a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzc$zza;)Lcom/google/android/gms/common/zzc$zza;
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_13

    const-string/jumbo v0, "GoogleSignatureVerifier"

    const-string/jumbo v1, "Package has more than one signature."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_12
    return-object v0

    :cond_13
    new-instance v3, Lcom/google/android/gms/common/zzc$zzb;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/zzc$zzb;-><init>([B)V

    move v0, v1

    :goto_21
    array-length v4, p2

    if-ge v0, v4, :cond_32

    aget-object v4, p2, v0

    invoke-virtual {v4, v3}, Lcom/google/android/gms/common/zzc$zza;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    aget-object v0, p2, v0

    goto :goto_12

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_32
    const-string/jumbo v0, "GoogleSignatureVerifier"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string/jumbo v0, "GoogleSignatureVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Signature not valid.  Found: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/common/zzc$zza;->a()[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    move-object v0, v2

    goto :goto_12
.end method
