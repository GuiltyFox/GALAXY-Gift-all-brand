.class public final Lcom/samsung/privilege/util/zxing/Intents$SearchBookContents;
.super Ljava/lang/Object;
.source "Intents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/zxing/Intents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchBookContents"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.google.zxing.client.android.SEARCH_BOOK_CONTENTS"

.field public static final ISBN:Ljava/lang/String; = "ISBN"

.field public static final QUERY:Ljava/lang/String; = "QUERY"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method
