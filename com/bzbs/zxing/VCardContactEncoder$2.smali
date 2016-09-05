.class Lcom/bzbs/zxing/VCardContactEncoder$2;
.super Ljava/lang/Object;
.source "VCardContactEncoder.java"

# interfaces
.implements Lcom/bzbs/zxing/Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/zxing/VCardContactEncoder;->a(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;)[Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/zxing/VCardContactEncoder;


# direct methods
.method constructor <init>(Lcom/bzbs/zxing/VCardContactEncoder;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/bzbs/zxing/VCardContactEncoder$2;->a:Lcom/bzbs/zxing/VCardContactEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
