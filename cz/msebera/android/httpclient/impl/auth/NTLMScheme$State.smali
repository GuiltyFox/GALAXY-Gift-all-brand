.class final enum Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
.super Ljava/lang/Enum;
.source "NTLMScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum c:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum d:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum e:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field public static final enum f:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

.field private static final synthetic g:[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string/jumbo v1, "UNINITIATED"

    invoke-direct {v0, v1, v3}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->a:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 53
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string/jumbo v1, "CHALLENGE_RECEIVED"

    invoke-direct {v0, v1, v4}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 54
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string/jumbo v1, "MSG_TYPE1_GENERATED"

    invoke-direct {v0, v1, v5}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->c:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 55
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string/jumbo v1, "MSG_TYPE2_RECEVIED"

    invoke-direct {v0, v1, v6}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->d:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 56
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string/jumbo v1, "MSG_TYPE3_GENERATED"

    invoke-direct {v0, v1, v7}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->e:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 57
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    const-string/jumbo v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->f:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->a:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v3

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->b:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v4

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->c:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v5

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->d:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v6

    sget-object v1, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->e:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->f:Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    aput-object v2, v0, v1

    sput-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->g:[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
    .registers 2

    .prologue
    .line 51
    const-class v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    return-object v0
.end method

.method public static values()[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->g:[Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/impl/auth/NTLMScheme$State;

    return-object v0
.end method
