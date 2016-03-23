.class Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder$3;
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
    .line 61
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder$3;->this$0:Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;->keepOnlyDigits(Ljava/lang/CharSequence;)Ljava/lang/String;
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/zxing/MECARDContactEncoder;->access$300(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
