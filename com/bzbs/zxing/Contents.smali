.class public final Lcom/bzbs/zxing/Contents;
.super Ljava/lang/Object;
.source "Contents.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "phone"

    aput-object v1, v0, v2

    const-string/jumbo v1, "secondary_phone"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tertiary_phone"

    aput-object v1, v0, v4

    sput-object v0, Lcom/bzbs/zxing/Contents;->a:[Ljava/lang/String;

    .line 96
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "phone_type"

    aput-object v1, v0, v2

    const-string/jumbo v1, "secondary_phone_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tertiary_phone_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/bzbs/zxing/Contents;->b:[Ljava/lang/String;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "email"

    aput-object v1, v0, v2

    const-string/jumbo v1, "secondary_email"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tertiary_email"

    aput-object v1, v0, v4

    sput-object v0, Lcom/bzbs/zxing/Contents;->c:[Ljava/lang/String;

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "email_type"

    aput-object v1, v0, v2

    const-string/jumbo v1, "secondary_email_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tertiary_email_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/bzbs/zxing/Contents;->d:[Ljava/lang/String;

    return-void
.end method
