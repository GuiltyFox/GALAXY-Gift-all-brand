.class Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder$2;
.super Ljava/lang/Object;
.source "VCardContactEncoder.java"

# interfaces
.implements Lcom/bzbs/lib/survey/util/zxing/Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder;->encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder$2;->this$0:Lcom/bzbs/lib/survey/util/zxing/VCardContactEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
