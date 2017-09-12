package main

import (
	"bufio"
	"fmt"
	"os"

	"github.com/PuerkitoBio/goquery"
)

func parseXml(r *bufio.Reader) {
	doc, _ := goquery.NewDocumentFromReader(r)
	doc.Find(".original, p").Each(func(i int, s *goquery.Selection) {
		//origin := s.Find(".original").Text()
		a := s.RemoveMatcher(".original").Text()
		fmt.Printf(":%s:\n", a)
	})
}

func main() {
	f, _ := os.Open("wal.html")
	xml := bufio.NewReader(f)
	parseXml(xml)
}
