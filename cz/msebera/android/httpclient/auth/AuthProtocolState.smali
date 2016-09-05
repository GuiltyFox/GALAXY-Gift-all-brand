.class public final enum Lcz/msebera/android/httpclient/auth/AuthProtocolState;
.super Ljava/lang/Enum;
.source "AuthProtocolState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcz/msebera/android/httpclient/auth/AuthProtocolState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum b:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum c:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum d:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field public static final enum e:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

.field private static final synthetic f:[Lcz/msebera/android/httpclient/auth/AuthProtocolState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string/jumbo v1, "UNCHALLENGED"

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string/jumbo v1, "CHALLENGED"

    invoke-direct {v0, v1, v3}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->b:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string/jumbo v1, "HANDSHAKE"

    invoke-direct {v0, v1, v4}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->c:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string/jumbo v1, "FAILURE"

    invoke-direct {v0, v1, v5}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->d:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v6}, Lcz/msebera/android/httpclient/auth/AuthProtocolState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->e:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->a:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    aput-object v1, v0, v2

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->b:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    aput-object v1, v0, v3

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->c:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    aput-object v1, v0, v4

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->d:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    aput-object v1, v0, v5

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->e:Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    aput-object v1, v0, v6

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->f:[Lcz/msebera/android/httpclient/auth/AuthProtocolState;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcz/msebera/android/httpclient/auth/AuthProtocolState;
    .registers 2

    .prologue
    .line 29
    const-class v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-object v0
.end method

.method public static values()[Lcz/msebera/android/httpclient/auth/AuthProtocolState;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthProtocolState;->f:[Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    invoke-virtual {v0}, [Lcz/msebera/android/httpclient/auth/AuthProtocolState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz/msebera/android/httpclient/auth/AuthProtocolState;

    return-object v0
.end method
