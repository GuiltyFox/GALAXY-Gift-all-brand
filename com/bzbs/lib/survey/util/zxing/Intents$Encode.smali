.class public final Lcom/bzbs/lib/survey/util/zxing/Intents$Encode;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/zxing/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Encode"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.zxing.client.android.ENCODE"

.field public static final DATA:Ljava/lang/String; = "ENCODE_DATA"

.field public static final FORMAT:Ljava/lang/String; = "ENCODE_FORMAT"

.field public static final SHOW_CONTENTS:Ljava/lang/String; = "ENCODE_SHOW_CONTENTS"

.field public static final TYPE:Ljava/lang/String; = "ENCODE_TYPE"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method