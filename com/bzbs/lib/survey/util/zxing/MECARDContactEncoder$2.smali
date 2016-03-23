.class Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder$2;
.super Ljava/lang/Object;
.source "MECARDContactEncoder.java"

# interfaces
.implements Lcom/bzbs/lib/survey/util/zxing/Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder$2;->this$0:Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 56
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    # getter for: Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;->COMMA:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;->access$200()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
