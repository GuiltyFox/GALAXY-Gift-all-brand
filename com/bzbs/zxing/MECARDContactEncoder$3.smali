.class Lcom/bzbs/zxing/MECARDContactEncoder$3;
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
    .line 61
    iput-object p1, p0, Lcom/bzbs/zxing/MECARDContactEncoder$3;->a:Lcom/bzbs/zxing/MECARDContactEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/zxing/MECARDContactEncoder;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
