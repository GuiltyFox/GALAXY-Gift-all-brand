.class public final enum Lcom/google/android/gms/analytics/internal/zzo;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/analytics/internal/zzo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/analytics/internal/zzo;

.field public static final enum b:Lcom/google/android/gms/analytics/internal/zzo;

.field private static final synthetic c:[Lcom/google/android/gms/analytics/internal/zzo;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzo;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzo;->a:Lcom/google/android/gms/analytics/internal/zzo;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzo;

    const-string/jumbo v1, "GZIP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/analytics/internal/zzo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzo;->b:Lcom/google/android/gms/analytics/internal/zzo;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/analytics/internal/zzo;

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzo;->a:Lcom/google/android/gms/analytics/internal/zzo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/analytics/internal/zzo;->b:Lcom/google/android/gms/analytics/internal/zzo;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzo;->c:[Lcom/google/android/gms/analytics/internal/zzo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/analytics/internal/zzo;
    .registers 2

    const-string/jumbo v0, "GZIP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzo;->b:Lcom/google/android/gms/analytics/internal/zzo;

    :goto_b
    return-object v0

    :cond_c
    sget-object v0, Lcom/google/android/gms/analytics/internal/zzo;->a:Lcom/google/android/gms/analytics/internal/zzo;

    goto :goto_b
.end method

.method public static values()[Lcom/google/android/gms/analytics/internal/zzo;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzo;->c:[Lcom/google/android/gms/analytics/internal/zzo;

    invoke-virtual {v0}, [Lcom/google/android/gms/analytics/internal/zzo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/analytics/internal/zzo;

    return-object v0
.end method
