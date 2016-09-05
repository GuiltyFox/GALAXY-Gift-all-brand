.class Lcom/bzbs/zxing/MECARDContactEncoder$2;
.super Ljava/lang/Object;
.source "MECARDContactEncoder.java"

# interfaces
.implements Lcom/bzbs/zxing/Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/zxing/MECARDContactEncoder;


# direct methods
.method constructor <init>(Lcom/bzbs/zxing/MECARDContactEncoder;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bzbs/zxing/MECARDContactEncoder$2;->a:Lcom/bzbs/zxing/MECARDContactEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 56
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {}, Lcom/bzbs/zxing/MECARDContactEncoder;->c()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
