.class final Lcom/bzbs/zxing/VCardContactEncoder;
.super Lcom/bzbs/zxing/ContactEncoder;
.source "VCardContactEncoder.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Lcom/bzbs/zxing/Formatter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "([\\\\,;])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bzbs/zxing/VCardContactEncoder;->a:Ljava/util/regex/Pattern;

    .line 31
    const-string/jumbo v0, "\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bzbs/zxing/VCardContactEncoder;->b:Ljava/util/regex/Pattern;

    .line 32
    new-instance v0, Lcom/bzbs/zxing/VCardContactEncoder$1;

    invoke-direct {v0}, Lcom/bzbs/zxing/VCardContactEncoder$1;-><init>()V

    sput-object v0, Lcom/bzbs/zxing/VCardContactEncoder;->c:Lcom/bzbs/zxing/Formatter;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/bzbs/zxing/ContactEncoder;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/bzbs/zxing/VCardContactEncoder;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/bzbs/zxing/Formatter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v6, Lcom/bzbs/zxing/VCardContactEncoder;->c:Lcom/bzbs/zxing/Formatter;

    const/16 v7, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/bzbs/zxing/VCardContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;Lcom/bzbs/zxing/Formatter;C)V

    .line 89
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 72
    sget-object v4, Lcom/bzbs/zxing/VCardContactEncoder;->c:Lcom/bzbs/zxing/Formatter;

    const/16 v5, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/VCardContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/zxing/Formatter;C)V

    .line 73
    return-void
.end method

.method static synthetic b()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/bzbs/zxing/VCardContactEncoder;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    const-string/jumbo v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, "VERSION:3.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    const-string/jumbo v2, "N"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/VCardContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V

    .line 53
    const-string/jumbo v2, "ORG"

    invoke-static {v0, v1, v2, p2}, Lcom/bzbs/zxing/VCardContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v2, "ADR"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/VCardContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V

    .line 55
    const-string/jumbo v2, "TEL"

    const v4, 0x7fffffff

    new-instance v5, Lcom/bzbs/zxing/VCardContactEncoder$2;

    invoke-direct {v5, p0}, Lcom/bzbs/zxing/VCardContactEncoder$2;-><init>(Lcom/bzbs/zxing/VCardContactEncoder;)V

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/VCardContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V

    .line 61
    const-string/jumbo v2, "EMAIL"

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/VCardContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V

    .line 62
    const-string/jumbo v2, "URL"

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v3, p6

    invoke-static/range {v0 .. v5}, Lcom/bzbs/zxing/VCardContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/bzbs/zxing/Formatter;)V

    .line 63
    const-string/jumbo v2, "NOTE"

    invoke-static {v0, v1, v2, p7}, Lcom/bzbs/zxing/VCardContactEncoder;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v2, "END:VCARD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    return-object v2
.end method
