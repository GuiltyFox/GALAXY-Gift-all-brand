.class final Lcom/bzbs/zxing/MECARDContactEncoder$1;
.super Ljava/lang/Object;
.source "MECARDContactEncoder.java"

# interfaces
.implements Lcom/bzbs/zxing/Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/zxing/MECARDContactEncoder;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 36
    invoke-static {}, Lcom/bzbs/zxing/MECARDContactEncoder;->b()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {}, Lcom/bzbs/zxing/MECARDContactEncoder;->a()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string/jumbo v2, "\\\\$1"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
